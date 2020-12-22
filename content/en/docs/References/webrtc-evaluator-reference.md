---
title: "WebRTC-Observer Evaluators Configurations"
linkTitle: "WebRTC-Observer Evaluators"
date: 2020-12.20
description: >
  Description of WebRTC-Observer Evaluator configurations
---

WebRTC-Observer uses a so called evaluators to analyze the peer connection samples.
The configuration of the evaluators can be done via the changing the configuration 
properties for a micronaut application.
Every configuration property is under the `observer` property. 
Here we give reference configuration for each version we released:

## Sample Configurations

### v0.6.x

```yaml
observer:
  # Static mapping between serviceUUID and serviceName for the reports.
  # the config key is the service name you want to see in the reports
  # and the uuid property points to the UUID, which is mapped to the name
#  serviceMapping:
#    desredServiceName:
#      uuid: "VALID UUID"

  # Configuration related to use of the hazelcast in the observer
  hazelcast:
    # The path for the config file.
    # if it starts with classpath:, then resolver tries to find it
    # in the built esources, otherwise it looks for a path
    configFile: ${HAZELCAST_CONFIG_FILE:`classpath:hazelcast.yaml`}

  # Configurations regarding to the evaluators of the observer
  #
  evaluators:
    # Configurations related to the evaluator evaluates the peer connections
    pcObserver:
      # Defines the maximum time a peer connection can be idle,
      # If a peer connection does not send any update in this period
      # then it is considered to be expired.
      peerConnectionMaxIdleTimeInS: 300
      # Defines the flush period in seconds for the buffer collecting
      # samples from peer connections.
      # Higher number decreases the load, but delays the updates
      mediaStreamUpdatesFlushInS: 15
      # The number of parallel buffers the samples from
      # peer connections are collected. This is
      # slightly important for performance reason, as
      # each buffer uses a mutex when it receives sample updates.
      # if the value is 0, then the number of parallel buffers are equal
      # to the number of available processors.
      mediaStreamsBufferNums: 0
  # Configurations for kafka topics
  # WARNING: If this is enabled, then the observer must have admin
  # privilege to check and create topics
  kafkaTopics:
    runAdminClient: False
    createIfNotExists: False
    reports:
      topicName: reports
      onCreatePartitionNums: 30
      onCreateReplicateFactor: 1
      retentionTimeInMs: 86400000

  # Configures the Reports forwarded to kafka.
  # In default all reports are forwarded, and it is not recommended
  # to turn this off, but if you know what you do and want to save some
  # throughput, than go ahead
  outboundReports:
    reportOutboundRTPs: True
    reportInboundRTPs: True
    reportRemoteInboundRTPs: True
    reportTracks: True
    reportMediaSources: True
    reportCandidatePairs: True
    reportLocalCandidates: True
    reportRemoteCandidates: True
    reportUserMediaErrors: True

  # By default we do not need a database at all, however
  # for backup purposes or configuration fetches purposes
  # it is remained here.
  database:
    enabled: False
    username: root
    password: password
    minIdleInMs: 100
    timeout: 1000
    jdbcURL: jdbc:mysql://localhost:3306/WebRTCObserver?serverTimezone=EET&useLegacyDatetimeCode=false
    jdbcDriver: "com.mysql.cj.jdbc.Driver"
    maxPoolSize: 100
    poolname: webrtc_observer
    dialect: MySQL
```