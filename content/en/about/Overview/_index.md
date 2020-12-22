---
title: "Overview"
linkTitle: "Overview"
weight: 2
Date: 2020-12-20
description: >
  ObserveRTC is an open source initiative aimed to provide tools to collect, intrepret, and visualize RTC metrics in real-time.
---
{{< imgproc observertc-overview Fit "640x480" >}}
A schematical overview showing our integration and observer to monitor WebRTC applications. 
{{< /imgproc >}}

*All product and company names are trademarks™ or registered® trademarks of their respective holders. Use of them does not imply any affiliation with or endorsement by them.*

### Components

Monitoring RTC applications is separated into three parts: Collection, Intrepretation, and Visualization. 

#### Stats Collection

**WebExtrApp** is a client-side development toolkit for WebRTC Monitoring integrations. The core functionality is to extract stats related to every peer connection in a webrtc call, unify the extracted stats and send it as a sample (PeerConnectionSample) for the WebRTC-Observer.

#### Stats Intrepretation

**WebRTC-Observer** is a microservice developed to accept WebRTC stats from WebExtrApp client integrations, monitor the WebRTC calls and it creates Reports. It is a simple microservice written by using the [Micronaut](https://www.micronaut.io/)framework. We use [Hazelcast](https://hazelcast.org) as a distributed in-memory database in order to store information related to the observed WebRTC calls. The service creates Reports from the observed PeerConnection, for which we use [Kafka](https://kafka.apache.org/) to forward.

#### Schemas

**PeerConnectionSample** describes and holds each stats from a peer connection to describe the state. All integration of WebExtrApp reports the same unified PeerConnectionSample schema to the observer. 

**Report** is an observation from the WebRTC-Observer based on the received sample. There are different types of reports that can be created and forwarded to a kafka broker.