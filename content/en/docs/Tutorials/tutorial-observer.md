---
title: "Observer"
linkTitle: "tutorial-observer"
date: 2021-01-09
description: >
  Basic tutorial to get start develop the Observer
---
## Prerequisites

* Getting started with [Micronaut](https://micronaut.io)
* Getting Started with [RXJava3](https://github.com/ReactiveX/RxJava/wiki/Getting-Started)

## Clone and Run

Let's clone from [here](https://github.com/ObserveRTC/observer)

    git clone https://github.com/ObserveRTC/observer

Open the code with an IDE (IntelliJ perhaps).
To run it, you need to run kafka currently. In 
the clones repository, you can run `docker-compose up kafka`, which 
runs a kafka for you setup everything.
If you now run the `observer`, and it should stand up and run.

The `observer` is a [micronaut](https://micronaut.io) application, 
and heavily using the convept of [Inversion of Control](https://docs.micronaut.io/latest/guide/index.html#ioc) through java bean creations.
All the main component of the application is marked with 
Singletone annotation and injected to the place it is used.
You might see Provider object (i.e.: RepositoryProvider), which 
is a proxy object to make easier to provide several singletone 
object belongs to the same package.


Let's look at the `src/main/java/org/observertc/webrtc/observer`.
packages are the application features. 
The WebSocketPCSampleV20200114 class is the entry point of the 
PCSample coming from the `observer-js`, and after 
validation it sends to the `Pipeline`

### Evaluators

The main logic is under `evaluators` packages, and the 
`Pipeline` class is the one, assemble the pipeline 
for the application. (`setup` method, it is automtacilly called 
after the Pipeline is constructed by the micronaut IoC manager).
The evaluators are using the [RXJava3](https://github.com/ReactiveX/RxJava) 
library to make a connectable component based pipeline.

Let's say we want to count how many report goes through
as InbounrRTP in one minute and report as an `ExtensionReport`.

First create a new class implements `ObservableOperator`:
```java
public static class MyCounter implements ObservableOperator<ReportRecord, ReportRecord> {

        private final String extensionType;

        public MyCounter(String extensionType) {
            this.extensionType = extensionType;
        }

        @Override
        public @NonNull Observer<? super ReportRecord> apply(@NonNull Observer<? super ReportRecord> observer) throws Throwable {
            final UUID serviceUUID = UUID.randomUUID();
            final String serviceName = "serviceName";
            final UUID pcUUID = UUID.randomUUID();
            return new Observer<ReportRecord>() {
                Disposable upstream;
                Integer count = 0;
                Instant lastReported = Instant.now();
                @Override
                public void onSubscribe(@NonNull Disposable d) {
                    this.upstream = d;
                }

                @Override
                public void onNext(@NonNull ReportRecord reportRecord) {
                    ++count;
                    Instant now = Instant.now();
                    if (now.minusSeconds(60).compareTo(this.lastReported) < 0) {
                        return;
                    }
                    Report report = reportRecord.value;
                    ExtensionReport myExtensionReport = ExtensionReport.newBuilder()
                            .setExtensionType(extensionType)
                            .setPeerConnectionUUID(pcUUID.toString())
                            .setPayload(count.toString())
                            .build();

                    Report myReport = Report.newBuilder()
                            .setMarker(report.getMarker())
                            .setServiceName(serviceName)
                            .setServiceUUID(serviceUUID.toString())
                            .setVersion(report.getVersion())
                            .setType(ReportType.EXTENSION)
                            .setTimestamp(now.toEpochMilli())
                            .setPayload(myExtensionReport)
                            .build();
                    count = 0;
                    this.lastReported = now;
                    ReportRecord newReportRecord = new ReportRecord(pcUUID, myReport);
                    observer.onNext(newReportRecord);
                }

                @Override
                public void onError(@NonNull Throwable e) {
                    if (Objects.nonNull(this.upstream)) {
                        if (!upstream.isDisposed()) {
                            this.upstream.dispose();
                        }
                    }
                    if (Objects.nonNull(observer)) {
                        observer.onError(e);
                    }
                }

                @Override
                public void onComplete() {
                    if (Objects.nonNull(observer)) {
                        observer.onComplete();
                    }
                }
            };
        }
    }
```

The main logic is implemeted in the `onNext` method.

Next we add it in our pipeline. Let's go to the Pipeline class, and 
add the following snippet in the `setup` method.

```java
this.observedPCSEvaluator
        .getInboundRTPReports()
        .lift(new MyCounter("MyICELocalCandidateCounts"))
        .subscribe(this.reportSink);
```

this snippet make a new `MyCounter` and subscribe it to the 
InboundRTPReports, and count how many of it goes through in 
60s.

This is how we can add a new operator to the observer.
Basically the RXJava3 is the limitation.

