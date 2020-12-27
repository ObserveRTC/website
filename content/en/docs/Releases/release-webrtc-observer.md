---
title: "WebRTC-Observer"
linkTitle: "webrtc-observer"
date: 2020-12-12
description: >
  New releases of WebRTC-Observer will be announced here
---

The actual version we are working on right now is `0.6`.
The expected release day of this version is 2020-12.

## Version 0.6

 * Use new schema for outgoing reports described at observertc.org
 * Use new schema for incoming peer connection samples described at observertc.org
 * Make the used repository independent from the evaluators as it uses the so-called tasks package
 * Use [Hazelcast](https://hazelcast.org) (4.1) as IMDG to store and share information in the cluster between observers
 * Use [Micronaut](https://micronaut.io) 2.2.1 as a base framework
 * Added Prometheus management endpoint
 * Added health- and error indicator for monitoring purposes

## Version 0.5
Released in: 2020-10

 * Applied a new schema for peer connection samples, and for reports
 * Started using RXJava3 for internal processing
 * Using only one topics in Kafka (the reports), instead a previously used 3.

## Version 0.3 
 
Released in : 2020-07
 
  * The first version we started using to collect and analyze samples 
for WebRTC calls