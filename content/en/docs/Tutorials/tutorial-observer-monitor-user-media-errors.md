---
title: "Observer"
linkTitle: "tutorial-observer"
date: 2021-01-09
description: >
  Basic tutorial to get start develop the Observer
---

In this tutorial we add a monitor to the observer providing metrics about
the amount of user media error occured in one instance during a configurable
amount of time.

## Prerequisites

* Getting started with [Micronaut](https://micronaut.io)
* Getting Started with [RXJava3](https://github.com/ReactiveX/RxJava/wiki/Getting-Started)
* Getting Started with [Micrometer](https://micrometer.io/)
* Getting Started with [Hazelcast](http://hazelcast.org)


## Overview

The [observer](https://github.com//ObserveRTC/observer) receives 
[PeerConnectionSamples](https://github.com/ObserveRTC/observer-js/blob/master/src/schema/v20200114/index.ts) 
from the [observer-js](https://github.com/ObserveRTC/observer-js/). 
The samples are observed, and reports are generated for further processing. 
Additionally metrics are exposed by the observer instances' monitor 
to provide health status about the observed media units and services.

In order to accomplish this tutorial, we need to listen user media reports 
from the ObservedPCSEvaluator, and tracks the occurrances of such events 
in a distributed database provided us by the hazelcast.

Then we need to setup a monitor insode the monitor package periodically 
reporting the number of occurred events and expose it through micrometer.

After this we need to make parameters for such feature to be configurable, and 
add it to the observer configuration.

Finally we need to add tests.


## Clone and Run Observer

Let's clone from [here](https://github.com/ObserveRTC/observer)

    git clone https://github.com/ObserveRTC/observer

Open the code with an IDE (IntelliJ perhaps). Then run.
THe observer is up and running, listening websocket connections
on port `7080`. When PeerConnectionSample is received it turns into a report and
(in a defauolt configuration) it sinks out to the console as a log message.
Additionally you can see the management endpoint on `localhost:7081/prometheus`
exposing metrics from the observer.

The configuration for the observer is in a resource folder: `resources/application.yaml`.

### Add UserMediaErrorsRepository 

We need to store the number of tracked user media errors, in order 
to expose metrics periodically.
Let's add a new hazelcast repository under the `repository/hazelcast` package.

```java
@Singleton
public class UserMediaErrorsRepository extends MapRepositoryAbstract<String, Integer> {
    private static final String KEY_DELIMITER = "#!#";
    public static String getKey(UUID serviceUUID, String mediaUnitId) {
      Objects.requireNonNull(serviceUUID);
      Objects.requireNonNull(mediaUnitId);
      return String.format("%s%s%s", serviceUUID.toString(), KEY_DELIMITER, mediaUnitId);
    }

    public static Pair<UUID, String> splitKey(String key) {
      String[] parts = key.split(DELIMITER);
      UUID serviceUUID = UUID.fromString(parts[0]);
      String mediaUnitId = parts[1];
      return new Pair<>(serviceUUID, mediaUnitId);
    }
    
	private static final Logger logger = LoggerFactory.getLogger(UserMediaErrorsRepository.class);

	private static final String HAZELCAST_MAP_KEY = "WebRTCObserverUserMediaErrors";

	public UserMediaErrorsRepository(ObserverHazelcast observerHazelcast) {
		super(observerHazelcast, HAZELCAST_MAP_KEY);
	}
}

```
This is a simple map repository where the key is a string and a 
value is an integer. The key for the repository will be a combination 
of a serviceUUID, and the mediaUnitId. To generate the key a helper method is added here.

As key, and value are primitive types, there is no need to implement 
explicit serialization to any of this type. If you add type of objects, that 
are not primitives, then you need to implement their serialization. 
For that example take a look in the `models` package to see how it is done.

We make the class singletone, so micronaut dependency manager can pick it up 
and inject it wherever we need it. To make the  
access to this repository a bit more convenient let's
 inject this new repository to the `RepositoryProvider` object, 
so all other object already have the `RepositoryProvider` can access 
to our new repository without any additional injection to them.
We add the new `UserMediaErrorsRepository` to `RepositoryProvider` 
like adding the following snippet:

```java
    @Inject
	Provider<UserMediaErrorsRepository> userMediaErrorsRepositoryProvider;

	public UserMediaErrorsRepository getUserMediaErrorsRepository() {
		return this.userMediaErrorsRepositoryProvider.get();
	}
```

### Add UserMediaErrorUpdaterTask

We need to save the amount of user media error the instance sensed into the repository.
As in this architecture we do not recommend to use the repositories directly from 
the evaluator, we added an additional abstraction between the evaluator and the repository, 
and so all queries and statements are done by the so called Tasks. 

Tasks are under the `tasks` package, and designed to execute a 
set of statements on the reopsitory and provide the expected results. 
In general we create tasks by extending the `TaskAbstract` abstract class.
An inherited `TaskAbstract` contains all the logic of executing, providing results, 
and execute actions in case of error happened, so the task operation 
can be formed to be idempotent. An extended `TaskAbstract` can be executed only 
once. Let's add our first task under the `tasks` package.

```java
@Prototype
public class UserMediaErrorsUpdaterTask extends TaskAbstract<Void> {

    private final Map<String, Integer> trackedErrors = new HashMap<>();

    @Inject
    RepositoryProvider repositoryProvider;

    public UserMediaErrorsUpdaterTask withTrackedErrors(Map<String, Integer> trackedErrors) {
        if (Objects.isNull(trackedErrors) || trackedErrors.size() < 1) {
            return this;
        }
        this.accumulate(trackedErrors, this.trackedErrors);
        return this;
    }

    @Override
    protected Void perform() throws Throwable {
        if (this.trackedErrors.size() < 1) {
            return null;
        }
        UserMediaErrorsRepository userMediaErrorsRepository = this.repositoryProvider.getUserMediaErrorsRepository();
        Set<String> keys = this.trackedErrors.keySet();
        Map<String, Integer> stored = userMediaErrorsRepository.findAll(keys);
        userMediaErrorsRepository.saveAll(this.accumulate(this.trackedErrors, stored));
        return null;
    }

    @Override
    protected void rollback(Throwable t) {
        // no need to rollback any operation here
    }

    private Map<String, Integer> accumulate(Map<String, Integer> source, Map<String, Integer> target) {
        Iterator<Map.Entry<String, Integer>> it = source.entrySet().iterator();
        while(it.hasNext()) {
            Map.Entry<String, Integer> entry = it.next();
            Integer tracked = target.getOrDefault(entry.getKey(), 0);
            tracked += entry.getValue();
            target.put(entry.getKey(), tracked);
        }
        return target;
    }
}
```
This is a `@Prototype` means we will have a new instance every type we inject it 
or request it from a Provider. Let's add this task to the `TasksProvider` object 
as follows:

```java
@Inject
Provider<UserMediaErrorsUpdaterTask> userMediaErrorsUpdaterTaskProvider;

public UserMediaErrorsUpdaterTask getUserMediaErrorUpdaterTask() {
		return this.userMediaErrorsUpdaterTaskProvider.get();
	}
```

### Add UserMediaErrorEvaluator

observer-js provided samples are evaluated in the `evaluator` package.
Every evaluator uses RXJava3 framework to be connectable with other evaluators. 
For getting familiar how we use RXJava3 as interconnectable black-boxes,
take a look the appendixes of this tutorial. 

Let's add our UserMediaEvaluator, which has one input for 
Reports contain UserMediaErrors, and it refreshes the repository periodically.

```java

@Singleton
public class UserMediaReportsEvaluator {
    private static final Logger logger = LoggerFactory.getLogger(UserMediaReportsEvaluator.class);

    private Subject<Report> userMediaErrorReports = PublishSubject.create();

    @Inject
    TasksProvider tasksProvider;

    @PostConstruct
    void setup() {
        this.userMediaErrorReports
                .buffer(10, TimeUnit.SECONDS, 1000)
                .subscribe(this::process);
    }


    public Observer<Report> getInput() {
        return this.userMediaErrorReports;
    }

    private void process(List<Report> reports) {
        if (reports.size() < 1) {
            return;
        }
        Map<String, Integer> trackedErrors = new HashMap<>();
        for (Report report : reports) {
            UserMediaError userMediaError = (UserMediaError) report.getPayload();
            if (Objects.isNull(userMediaError)) {
                logger.warn("Report {} payload is null, it cannot be tracked", report.toString());
                continue;
            }
            String mediaUnitId = userMediaError.getMediaUnitId();
            if (Objects.isNull(mediaUnitId)) {
                logger.warn("Report {} mediaunitId is null, it cannot be tracked", report.toString());
                continue;
            }
            if (Objects.isNull(report.getServiceUUID())) {
                logger.warn("Report {} serviceUUID is null, it cannot be tracked", report.toString());
                continue;
            }
            UUID serviceUUID = UUID.fromString(report.getServiceUUID());
            String key = UserMediaErrorsRepository.getKey(serviceUUID, mediaUnitId);
            Integer tracked = trackedErrors.getOrDefault(key, 0);
            trackedErrors.put(key,  ++tracked);
        }

        UserMediaErrorsUpdaterTask task = this.tasksProvider.getUserMediaErrorUpdaterTask();
        task.withTrackedErrors(trackedErrors).withLogger(logger).execute();

        if (!task.succeeded()) {
            logger.warn("{} is failed", task.getClass().getSimpleName());
        }
    }
}
```

This simple evaluator exposes one input, where it expects to accept 
reports, which are have the UserMediaError payloads. This assumption 
is crucial for this evaluator as in its evaluator cast the payload for that type, 
so the input must be connected to a proper output in the pipeline.
Other than that it buffers the input for 10s, or 100 items, and 
invokes the process method with the list of reports it received 
in order to proceed.
The process method makes a map for tracked errors and request 
the previously defined `UserMediaErrorUpdaterTask` through the 
`TaskProvider`, and execute it after passed the expected parameter.

Let's addthis evaluator to our pipelie in the `Pipeline` object.

Let's inject our new evaluator

```java
@Inject
    UserMediaReportsEvaluator userMediaReportsEvaluator;
```

And then lets connect to the right pipeline in the `setup` method.
```java
// UserMediaError -> UserMediaReportEvalautor
        this.observedPCSEvaluator
                .getUserMediaErrorReports()
                .subscribe(this.userMediaReportsEvaluator.getInput());
```

We arhalf done! The user media error reports are routed to our new evaluator,
which calls a task to save the tracked numbers into the hazelcast repository.

Next we add a monitor to extract the numbers and expose the metrics.

### Add UserMediaErrorsExtractorTask

Now we need to think about hwo to extract and expose the metrics.
The Evaluator receives the reports and update the tracked numbers periodically.
When we expose the metrics we need to extract all of the tracked numbers 
stored in the instance locally, so we move it out from the repository.

```java
@Prototype
public class UserMediaErrorsExtractorTask extends TaskAbstract<Map<String, Integer>> {
    private enum State {
        CREATED,
        COLLECTED,
        REMOVED,
        EXECUTED,
        ROLLBACK
    }
    private State state = State.CREATED;
    private Map<String, Integer> locallyStoredEntries = new HashMap<>();

    @Inject
    RepositoryProvider repositoryProvider;

    @Override
    protected Map<String, Integer> perform() throws Throwable {
        UserMediaErrorsRepository repository = this.repositoryProvider.getUserMediaErrorsRepository();
        switch (this.state) {
            default:
            case CREATED:
                this.locallyStoredEntries = repository.getLocalEntries();
                this.state = State.COLLECTED;
            case COLLECTED:
                repository.removeAll(this.locallyStoredEntries.keySet());
                this.state = State.REMOVED;
            case REMOVED:
                this.state = State.EXECUTED;
            case EXECUTED:
            case ROLLBACK:
                break;
        }
        return this.locallyStoredEntries;
    }

    @Override
    protected void rollback(Throwable t) {
        UserMediaErrorsRepository repository = this.repositoryProvider.getUserMediaErrorsRepository();
        switch (this.state) {
            case EXECUTED:
                this.state = State.REMOVED;
            case REMOVED:
                if (Objects.nonNull(this.locallyStoredEntries)) {
                    repository.saveAll(this.locallyStoredEntries);
                }
            case COLLECTED:
            case CREATED:
                this.state = State.ROLLBACK;
            case ROLLBACK:
                break;
        }
    }
}
```

Here we use the concept of rollback, although its a bit overshoot.
The reason behind it is if anything happens between collection and removal, 
we will restore the state by adding back the extracted stores.
We only removes the key,value pair owned by this exact instance.
Although, normally we extract exactly what we collected before in an accumualted way,
if an observer instance is crashed, its backup hazelcast map will be owned by another instance, 
which in this way can report the tracked number correctly.

Add this task to the `TasksProvider` similarly as we added it before.
```java
@Inject
Provider<UserMediaErrorsExtractorTask> userMediaErrorsExtractorTaskProvider;


```

### Add UserMediaErrorsMonitor

Last, we add the monitor exposes the metric.
Let's add our new Monitor under the `monitors` package.

```java

@Singleton
@Requires(notEnv = Environment.TEST)
public class UserMediaErrorsMonitor implements ApplicationEventListener<HeartbeatEvent> {
    private static final String METRIC_NAME = "usermediaerrors";
    private static final String MEDIA_UNIT_TAGS_NAME = "mediaunit";
    private static final String SERVICE_UUID_TAG_NAME = "serviceUUID";
    private static final Logger logger = LoggerFactory.getLogger(UserMediaErrorsMonitor.class);

    @Inject
    MeterRegistry meterRegistry;

    @Inject
    TasksProvider tasksProvider;

    private Instant lastExecuted = Instant.now();

    public UserMediaErrorsMonitor() {

    }

    @Override
    public void onApplicationEvent(HeartbeatEvent event) {
        if (Duration.between(this.lastExecuted, Instant.now()).getSeconds() < 300) {
            return;
        }
        try {
            this.execute();
        } catch (Throwable t) {
            logger.error("Unexpected error occurred during execution", t);
        }
        this.lastExecuted = Instant.now();
    }

    @Timed(
            value = "observer_calls_monitor_execution",
            description = "Execution time of collecting and analyzing locally owned calls to provide metrics"
    )
    private void execute() {
        UserMediaErrorsExtractorTask task = this.tasksProvider.getUserMediaErrorExtractorTask();

        if (!task.execute().succeeded()) { // automatically rolled back
            return;
        }

        Map<String, Integer> locallyTrackedErrors = task.getResult();
        if (locallyTrackedErrors.size() < 1) {
            return;
        }
        Iterator<Map.Entry<String, Integer>> it = locallyTrackedErrors.entrySet().iterator();
        while(it.hasNext()) {
            Map.Entry<String, Integer> entry = it.next();
            Pair<UUID, String> pair = UserMediaErrorsRepository.splitKey(entry.getKey());
            Integer trackedErrors = entry.getValue();
            this.meterRegistry.counter(METRIC_NAME,
                    SERVICE_UUID_TAG_NAME, pair.getKey().toString(),
                    MEDIA_UNIT_TAGS_NAME, pair.getValue())
                    .increment(trackedErrors);
        }
    }
}
```

This object is singletone, and subscribed to the application 
heartbeat event (by default it is in every 15s).
The monitor only refreshes itself in every 5mins (300 seconds, as it is in the condition).
After every 5 mins passed it is execute its inside process extract the stored user media errors
and exposes it through its endpoint (in default its the prometheus). 
And we are done with exposing.

### Configurable

With micronaut we can make the configuration through yaml easy.
open the `application.yaml` and add the following snippet under the `observer:` 
property: 
```yaml
observer:
  userMediaErrorsMonitor:
    periodInS: 300
```

Then open the `ObserverConfig` class, and add the following snippet:
```java
public UserMeidaErrorsMonitorConfig userMediaErrorsMonitor;

	@ConfigurationProperties("userMediaErrorsMonitor")
	public static class UserMeidaErrorsMonitorConfig {
		public int periodInS = 300;
	}
```

From that moment the configuration is available for you in the program if you 
inject the `ObserverConfig` in your monitor.

So thats it. And I am too tired for tests.


## Appendixes: Quick Recap

### RXJava

In our interpretation from RXJava `Observable` interfaces are the outputs of one evaluator,
and `Observer` interfaces are the inputs. A subject is both at the same time,
and `Subject` is a appropriate to expose an output or an input from an evaluator.

Let's add our own evaluator to catch up user media error.

```java
class IntegerProducer implements Runnable {
		private Subject<Integer> output = PublishSubject.create();

		public Observable<Integer> getOutput() {
			return this.output;
		}

		public void run() {
			for (int i = 0; i < 10; ++i)
				this.output.onNext(i);
		}
	}

	class IntegerConsumer {
		private Subject<Integer> input = PublishSubject.create();

		public Observer<Integer> getInput() {
			return this.input;
		}

		public IntegerConsumer() {
			this.input.subscribe(System.out::println);
		}
	}

	void runPipeline() {
		// Component Constructions
		IntegerProducer producer = new IntegerProducer();
		IntegerConsumer consumer = new IntegerConsumer();

		// Component Connections
		producer.getOutput().subscribe(consumer.getInput());

		// Run pipeline
		producer.run();
	}
```
This pipeline gives an example how to use RXJava as processable and
interconnectable black-boxes to produce and consume messages (integers).


