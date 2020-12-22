---
title: "Overview"
linkTitle: "Overview"
weight: 2
Date: 2020-12-20
description: >
  ObserveRTC is an open source initiative aimed to provide tools to collect, intrepret, and visualize RTC metrics in real-time.
---

This section gives you an introduction of the ObserveRTC solutions, 
describes ObserveRTC’s architecture along with its components, use cases and topology.

## What is ObserveRTC?

ObserveRTC is an open source initiative aimed to 
provide tools to monitor and analyze applications 
for real-time communication. 

**As an application developer** you can use our solutions of  
ObserveRTC to verify your feature 
and debug your WebRTC applications.

**As a project owner** you can use our solutions to 
measure and monitor the performance of your application.

**As a project contributor** you can be part of a community 
appreciate your effort to make developers life easier 
and ensures taht your solution and contribution is meaningful. 

We are creating solutions for monitoring WebRTC 
platforms. One of the requirement when we create a service 
is to make it highly scalable and available. 
We use open-source technologies designed for distributed  
applications. Our main principle is to not reinvent the wheel,  
making things as simple as possoble, but not simpler.

You have full control of data you extract from 
your WebRTC platform regarding to monitoring your application, and 
you can deploy our solutions in any cloud provider supporting 
kubernetes easily. For flexibility we use helm to deploy our solution in kubernetes.

Our flagship is the WebRTC-Observer microservice make it possible 
to collect and analyze your WebRTC applications.
WebRTC-Observer is designed to be lightweight and easy to use. 
Since it is delivered as a docker container, 
it easily deploy into your infrastructure.

### WebRTC-Observer Strengths

* It is open source.
* It is designed to be integrated other open-source solutions.
* It is designed for the cloud. When the size of your memory and compute requirements increase, new members can be dynamically added to your cluster to scale elastically.
* It is designed to use [hazelcast](https://hazelcast.org) as an in-memory distributed databse, therefore Data is resilient to member failure. 

**WebRTC-Observer is a fit when you need**:

* QoS analytical tools to monitor your WebRTC application.
* You want to own the data you extract
* You want to easily extend and develop the capabilities of analyzing WebRTC applications further.

### Architecture

{{< imgproc observertc-overview Fit "640x480" >}}
Monitoring RTC applications is separated into three parts: Collection, Intrepretation, and Visualization. 
{{< /imgproc >}}

*All product and company names are trademarks™ or registered® trademarks of their respective holders. Use of them does not imply any affiliation with or endorsement by them.*

#### Stats Collection

{{< imgproc stats-collector Fit "320x240" >}}
Schematical overview of communication between a Stats Collector (WebExtrApp), 
and a samples interpreter (Observer).
{{< /imgproc >}}

**WebExtrApp** is a client-side development toolkit for WebRTC Monitoring integrations. The core functionality is to extract stats related to every peer connection in a webrtc call, unify the extracted stats and send it as a sample (PeerConnectionSample) for the WebRTC-Observer.

#### Samples Interpretations

{{< imgproc stats-interpreter Fit "320x240" >}}
Schematical overview of communication between a Stats Interpreter (WebRTC-Observer),
and a Data visualization (Data Studio).
{{< /imgproc >}}

**WebRTC-Observer** is a microservice developed to accept WebRTC stats from WebExtrApp client integrations, monitor the WebRTC calls and it creates Reports. It is a simple microservice written by using the [Micronaut](https://www.micronaut.io/)framework. We use [Hazelcast](https://hazelcast.org) as a distributed in-memory database in order to store information related to the observed WebRTC calls. The service creates Reports from the observed PeerConnection, for which we use [Kafka](https://kafka.apache.org/) to forward.

#### Report Analyzation and Visualization

This part is up to you! As the Observer forwards [Reports]({{< ref "reports.md" >}}) 
to Kafka, and from that point you can use your favorite tool 
(i.e.: [Kafka Connect](https://docs.confluent.io/platform/current/connect/index.html), 
[Kakfka streams](https://kafka.apache.org/documentation/streams/)) to analyse your WebRTC applications.

#### Schemas

We use predefined [Data Transfer Objects](https://en.wikipedia.org/wiki/Data_transfer_object)) (DTO) to communicate one service to another. 
These DTOs are documented in the [Reference](/docs/references/) sections. 
The following DTOs we are corrently using:

[**PeerConnectionSample**]({{< ref "peer-connection-sample.md" >}}) describes and holds each stats from a peer connection to describe the state. All integration of WebExtrApp reports the same unified PeerConnectionSample schema to the observer. 

[**Report**]({{< ref "reports.md" >}}) is an observation from the WebRTC-Observer based on the received sample. There are different types of reports that can be created and forwarded to a kafka broker.

### Use Cases

ObserveRTC can be used:

 * To monitor your WebRTC applications
 * To have full ownership of data you extract from your solution
 * To have a highly scalable and flexible WebRTC monitoring solution

### Resources

ObserveRTC source code can be found at [GitHub/ObserveRTC](https://github.com/ObserveRTC/). 
This is also where you can contribute and report issues.
