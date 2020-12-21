# Schema Provider for ObserveRTC
This service is to provide descriptions for schemas microservices in ObserveRTC uses.

## Version: 0.1

**License:** [Apache 2.0](https://schemas.observertc.org)

### /peerconnectionsamples/v20200114

#### GET
##### Parameters

| Name | Located in | Description | Required | Schema |
| ---- | ---------- | ----------- | -------- | ---- |

##### Responses

| Code | Description |
| ---- | ----------- |
| 200 | getPcSample20200114 200 response |

### Models

#### PeerConnectionSampleV20200114.ICECandidatePair

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| availableOutgoingBitrate | integer |  | No |
| bytesReceived | long |  | No |
| bytesSent | long |  | No |
| consentRequestsSent | integer |  | No |
| currentRoundTripTime | double |  | No |
| id | string |  | No |
| localCandidateId | string |  | No |
| nominated | boolean |  | No |
| priority | long |  | No |
| remoteCandidateId | string |  | No |
| requestsReceived | integer |  | No |
| requestsSent | integer |  | No |
| responsesReceived | integer |  | No |
| responsesSent | integer |  | No |
| state | string | _Enum:_ `"FAILED"`, `"FROZEN"`, `"IN_PROGRESS"`, `"SUCCEEDED"`, `"WAITING"`, `"UNKNOWN"` | No |
| totalRoundTripTime | double |  | No |
| transportId | string |  | No |
| writable | boolean |  | No |

#### PeerConnectionSampleV20200114.ICEState

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| PeerConnectionSampleV20200114.ICEState | string |  |  |

#### PeerConnectionSampleV20200114.ICELocalCandidate

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| candidateType | string | _Enum:_ `"HOST"`, `"PRFLX"`, `"RELAY"`, `"SRFLX"`, `"UNKNOWN"` | No |
| deleted | boolean |  | No |
| id | string |  | No |
| ip | string |  | No |
| isRemote | boolean |  | No |
| networkType | string | _Enum:_ `"BLUETOOTH"`, `"CELLULAR"`, `"ETHERNET"`, `"UNKNOWN"`, `"VPN"`, `"WIFI"`, `"WIMAX"` | No |
| port | integer |  | No |
| priority | long |  | No |
| protocol | string | _Enum:_ `"TCP"`, `"UDP"`, `"UNKNOWN"` | No |
| transportId | string |  | No |

#### PeerConnectionSampleV20200114.CandidateType

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| PeerConnectionSampleV20200114.CandidateType | string |  |  |

#### PeerConnectionSampleV20200114.NetworkType

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| PeerConnectionSampleV20200114.NetworkType | string |  |  |

#### PeerConnectionSampleV20200114.InternetProtocol

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| PeerConnectionSampleV20200114.InternetProtocol | string |  |  |

#### PeerConnectionSampleV20200114.ICERemoteCandidate

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| candidateType | string | _Enum:_ `"HOST"`, `"PRFLX"`, `"RELAY"`, `"SRFLX"`, `"UNKNOWN"` | No |
| deleted | boolean |  | No |
| id | string |  | No |
| ip | string |  | No |
| isRemote | boolean |  | No |
| port | integer |  | No |
| priority | long |  | No |
| protocol | string | _Enum:_ `"TCP"`, `"UDP"`, `"UNKNOWN"` | No |
| transportId | string |  | No |

#### PeerConnectionSampleV20200114.ICEStats

Measurement to describe the state of the Interactive Connectivity Establishment (ICE)

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| candidatePairs | [ object ] |  | No |
| localCandidates | [ object ] |  | No |
| remoteCandidates | [ object ] |  | No |

#### PeerConnectionSampleV20200114.InboundRTPStreamStats

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| bytesReceived | long |  | No |
| codecId | string |  | No |
| decoderImplementation | string |  | No |
| estimatedPlayoutTimestamp | double |  | No |
| fecPacketsDiscarded | integer |  | No |
| fecPacketsReceived | integer |  | No |
| firCount | integer |  | No |
| framesDecoded | integer |  | No |
| headerBytesReceived | long |  | No |
| id | string |  | No |
| isRemote | boolean |  | No |
| jitter | double |  | No |
| keyFramesDecoded | integer |  | No |
| lastPacketReceivedTimestamp | double |  | No |
| mediaType | string | _Enum:_ `"AUDIO"`, `"VIDEO"`, `"UNKNOWN"` | No |
| nackCount | integer |  | No |
| packetsLost | integer |  | No |
| packetsReceived | integer |  | No |
| pliCount | integer |  | No |
| qpSum | double |  | No |
| ssrc | long |  | No |
| totalDecodeTime | double |  | No |
| totalInterFrameDelay | double |  | No |
| totalSquaredInterFrameDelay | double |  | No |
| trackId | string |  | No |
| transportId | string |  | No |

#### PeerConnectionSampleV20200114.RTCStreamMediaType

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| PeerConnectionSampleV20200114.RTCStreamMediaType | string |  |  |

#### PeerConnectionSampleV20200114.MediaSourceStats

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| audioLevel | float |  | No |
| framesPerSecond | double |  | No |
| height | double |  | No |
| id | string |  | No |
| mediaType | string | _Enum:_ `"AUDIO"`, `"VIDEO"`, `"UNKNOWN"` | No |
| totalAudioEnergy | float |  | No |
| totalSamplesDuration | double |  | No |
| trackId | string |  | No |
| width | double |  | No |

#### PeerConnectionSampleV20200114.RTCQualityLimitationReason

Indicates the reason of the limitation

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| PeerConnectionSampleV20200114.RTCQualityLimitationReason | string | Indicates the reason of the limitation |  |

#### PeerConnectionSampleV20200114.OutboundRTPStreamStats

Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcremoteoutboundrtpstreamstats>

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| bytesSent | long | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtctransportstats-bytessent> | No |
| codecId | string |  | No |
| encoderImplementation | string | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcoutboundrtpstreamstats-encoderimplementation> | No |
| firCount | integer | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcoutboundrtpstreamstats-fircount> | No |
| framesEncoded | integer | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcoutboundrtpstreamstats-framesencoded> | No |
| headerBytesSent | long | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcoutboundrtpstreamstats-headerbytessent> | No |
| id | string | Indicates if the report belongs to a remote participant | No |
| isRemote | boolean | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcoutboundrtpstreamstats-keyframesencoded> | No |
| keyFramesEncoded | long | The number of keyframes encoded | No |
| mediaSourceId | string | The id of the media source | No |
| mediaType | string | _Enum:_ `"AUDIO"`, `"VIDEO"`, `"UNKNOWN"` | No |
| nackCount | integer | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcoutboundrtpstreamstats-nackcount> | No |
| packetsSent | integer | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtctransportstats-packetssent> | No |
| pliCount | integer | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcoutboundrtpstreamstats-plicount> | No |
| qpSum | double | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcoutboundrtpstreamstats-qpsum> | No |
| qualityLimitationReason | string | Indicates the reason of the limitation<br>_Enum:_ `"BANDWIDTH"`, `"CPU"`, `"NONE"`, `"OTHER"`, `"UNKNOWN"` | No |
| qualityLimitationResolutionChanges | long | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcoutboundrtpstreamstats-qualitylimitationresolutionchanges> | No |
| remoteId | string | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcoutboundrtpstreamstats-remoteid> | No |
| retransmittedBytesSent | long | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcoutboundrtpstreamstats-retransmittedbytessent> | No |
| retransmittedPacketsSent | integer |  | No |
| ssrc | long |  | No |
| totalEncodedBytesTarget | long |  | No |
| totalEncodeTime | double |  | No |
| totalPacketSendDelay | double |  | No |
| trackId | string |  | No |
| transportId | string |  | No |

#### PeerConnectionSampleV20200114.RemoteInboundRTPStreamStats

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| codecId | string | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcrtpstreamstats-codecid> | No |
| id | string | The id of the InboundRTP the client use in its dictionary | No |
| jitter | double | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcreceivedrtpstreamstats-jitter> | No |
| localId | string | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcremoteinboundrtpstreamstats-localid> | No |
| mediaType | string | _Enum:_ `"AUDIO"`, `"VIDEO"`, `"UNKNOWN"` | No |
| packetsLost | integer | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcreceivedrtpstreamstats-packetslost> | No |
| roundTripTime | double | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcremoteinboundrtpstreamstats-roundtriptime> | No |
| ssrc | long | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcrtpstreamstats-ssrc> | No |
| transportId | string | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcicecandidatestats-transportid> | No |

#### PeerConnectionSampleV20200114.RTCTrackStats

A direct mapping of the <https://www.w3.org/TR/webrtc-stats/#dom-rtcstatstype-track>

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| concealedSamples | integer | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcaudioreceiverstats-concealedsamples> | No |
| concealmentEvents | integer | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcaudioreceiverstats-concealmentevents> | No |
| detached | boolean | Indicates if the track is detached from the source or not | No |
| ended | boolean | Indicates if the source ended the transmission for this track | No |
| framesDecoded | integer | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcinboundrtpstreamstats-framesdecoded> | No |
| framesDropped | integer | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcreceivedrtpstreamstats-framesdropped> | No |
| framesReceived | integer | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcinboundrtpstreamstats-framesreceived> | No |
| hugeFramesSent | integer | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcoutboundrtpstreamstats-hugeframessent> | No |
| id | string | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcmediasourcestats-trackidentifier> | No |
| insertedSamplesForDeceleration | integer | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcaudioreceiverstats-insertedsamplesfordeceleration> | No |
| jitterBufferDelay | double | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcvideoreceiverstats-jitterbufferdelay> | No |
| jitterBufferEmittedCount | integer | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcvideoreceiverstats-jitterbufferemittedcount> | No |
| mediaSourceId | string | The id of the media source the track is attached to | No |
| mediaType | string | _Enum:_ `"AUDIO"`, `"VIDEO"`, `"UNKNOWN"` | No |
| remoteSource | boolean | Indicates if the track attached to a remote source or not | No |
| removedSamplesForAcceleration | integer | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcinboundrtpstreamstats-removedsamplesforacceleration> | No |
| samplesDuration | double | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcaudioreceiverstats-totalsamplesduration> | No |
| silentConcealedSamples | integer | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcaudioreceiverstats-silentconcealedsamples> | No |
| totalSamplesReceived | integer | Map the value of <https://www.w3.org/TR/webrtc-stats/#dom-rtcinboundrtpstreamstats-totalsamplesreceived> | No |

#### PeerConnectionSampleV20200114.RTCStats

Measurement to describe the receiver side for the peer connection.

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| inboundRTPStats | [ object ] |  | No |
| mediaSources | [ object ] |  | No |
| outboundRTPStats | [ object ] |  | No |
| remoteInboundRTPStats | [ object ] |  | No |
| tracks | [ object ] |  | No |

#### PeerConnectionSampleV20200114.ExtensionStat

A custom defined extension for the sample

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| extensionType | string |  | No |
| payload | string |  | No |

#### PeerConnectionSampleV20200114.UserMediaError

The reported user media error messages appeared to the user. (If this is not null, then peer connection uuid can be null.)

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| message | string |  | No |

#### PeerConnectionSampleV20200114

The Peer Connection Sample provided by the WebExtrApp, version 20200114

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| browserId | string | fingerprint of the browser the sample is originated from. Use to identify unique number of browsers in a call. | No |
| iceStats | object | Measurement to describe the state of the Interactive Connectivity Establishment (ICE) | No |
| peerConnectionId | string | The UUID of the peer connection the sample belongs to | No |
| receiverStats | object | Measurement to describe the receiver side for the peer connection. | No |
| senderStats | object | Measurement to describe the receiver side for the peer connection. | No |
| timeZoneOffsetInMinute | long | The offset in minutes from GMT the browser reports the sample may have. | No |
| timestamp | long | The timestamp in epoch of the browser reports the sample | No |
| callId | string | The application provided identifier of the call the peer connection joined to | No |
| userId | string | The application provided Id of the user joined to the call | No |
| extensions | [ object ] | Custom defined measurements attached to peer connection sample | No |
| userMediaErrors | [ object ] | Custom defined measurements attached to peer connection sample | No |
| marker | string | A custom defined string all report will be marked with. | No |
