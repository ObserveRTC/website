---
title: "Overview"
linkTitle: "Overview"
weight: 2
description: >
  ObserveRTC is an open source initiative aimed to provide tools to monitor and analyze applications for real-time communication.
---
{{< imgproc webrtc-schema Fit "640x480" >}}
A schematical overview of using our integration and observer to 
monitor WebRTC applications. There are two components communicate to each other: 
WebExtrApp, and the Observer. WebExtrApp uses the PeerConnectionSample schema to 
report statistical measurements to the Observer. The Observer component making 
Report schemas based on the samples it receives from the WebExtrApp and the observation 
it makes by analyzing the streams.
{{< /imgproc >}}

Monitoring RTC applications is separated into two parts: Sampling, and Analyzing. 
Sampling a WebRTC Calls we collect information from client side provided 
by the browser or integrated video platforms

### Components
**WebExtrApp** is a development toolkit for WebRTC Monitoring integrations.
The core concept is to extract measurements related to every peer 
connection a webrtc call has, unify the extracted measurements 
and send it as a sample (PeerConnectionSample) for the WebRTC-Observer.

**WebRTC-Observer** is a microservice developed to accept samples 
from WebExtrApp client integrations, monitor your WebRTC calls 
and it makes Reports (Report) out of it.
The main purpose of this service is to make Reports about the Samples. 
WebRTC-Observer is a simple microservice written by using 
the [Micronaut](https://www.micronaut.io/) 
framework. We use [Hazelcast](https://hazelcast.org) as a 
distributed in-memory database in order to store information 
related to the observed calls. The service creates Reports from 
the observed PeerConnection, for which we use 
[Kafka](https://kafka.apache.org/) to forward.

### Schemas

**PeerConnectionSample** describes and holds every measurement 
a peer connection may have to describe the state. All integration 
of WebExtrApp reports the same unified PeerConnectionSample schema 
to the observer. 

**Report** is an observation the WebRTC-Observer reports based on 
the received sample. There are different types of report it can 
make and forward to a kafka broker.