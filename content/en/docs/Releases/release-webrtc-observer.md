---
title: "WebRTC-Observer"
linkTitle: "webrtc-observer"
date: 2020-12-12
description: >
  New releases of WebRTC-Observer will be announced here
---

The actual version we are working on right now is `0.6`.
The expected release day of this version is 2020-12.

## Version 0.6-alpha

 * Uses Hazelcast instead of MySQL
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