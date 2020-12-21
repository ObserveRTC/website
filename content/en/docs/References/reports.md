---
title: "Reports Schema"
type: swagger
date: 2020-12-20
weight: 2
description: Describe the Report schema
---


<i id="#">path: #</i>

&#36;ref: [#/definitions/record:org.observertc.webrtc.schemas.reports.Report](#/definitions/record:org.observertc.webrtc.schemas.reports.Report)

# definitions

- Type: `object`
- <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Report">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Report</i>
- This schema <u>does not</u> accept additional properties.
- **_Properties_**
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Report/properties/serviceUUID">serviceUUID</b> `required`
        - Type: `string`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Report/properties/serviceUUID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Report/properties/serviceUUID</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Report/properties/serviceName">serviceName</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Report/properties/serviceName">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Report/properties/serviceName</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Report/properties/marker">marker</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Report/properties/marker">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Report/properties/marker</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Report/properties/timestamp">timestamp</b> `required`
        - Type: `integer`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Report/properties/timestamp">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Report/properties/timestamp</i>
        - Range: between -9223372036854776000 and 9223372036854776000
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Report/properties/payload">payload</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Report/properties/payload">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Report/properties/payload</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Report/properties/type">type</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Report/properties/type">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Report/properties/type</i>
        - &#36;ref: [#/definitions/enum:org.observertc.webrtc.schemas.reports.ReportType](#/definitions/enum:org.observertc.webrtc.schemas.reports.ReportType)
        - Default: _"UNKNOWN"_
- Type: `object`
- <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InitiatedCall">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InitiatedCall</i>
- This schema <u>does not</u> accept additional properties.
- **_Properties_**
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InitiatedCall/properties/callUUID">callUUID</b> `required`
        - Type: `string`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InitiatedCall/properties/callUUID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InitiatedCall/properties/callUUID</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InitiatedCall/properties/callName">callName</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InitiatedCall/properties/callName">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InitiatedCall/properties/callName</i>
- Type: `object`
- <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.FinishedCall">path: #/definitions/record:org.observertc.webrtc.schemas.reports.FinishedCall</i>
- This schema <u>does not</u> accept additional properties.
- **_Properties_**
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.FinishedCall/properties/callUUID">callUUID</b> `required`
        - Type: `string`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.FinishedCall/properties/callUUID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.FinishedCall/properties/callUUID</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.FinishedCall/properties/callName">callName</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.FinishedCall/properties/callName">path: #/definitions/record:org.observertc.webrtc.schemas.reports.FinishedCall/properties/callName</i>
- Type: `object`
- <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.JoinedPeerConnection">path: #/definitions/record:org.observertc.webrtc.schemas.reports.JoinedPeerConnection</i>
- This schema <u>does not</u> accept additional properties.
- **_Properties_**
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.JoinedPeerConnection/properties/mediaUnitId">mediaUnitId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.JoinedPeerConnection/properties/mediaUnitId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.JoinedPeerConnection/properties/mediaUnitId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.JoinedPeerConnection/properties/callUUID">callUUID</b> `required`
        - Type: `string`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.JoinedPeerConnection/properties/callUUID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.JoinedPeerConnection/properties/callUUID</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.JoinedPeerConnection/properties/callName">callName</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.JoinedPeerConnection/properties/callName">path: #/definitions/record:org.observertc.webrtc.schemas.reports.JoinedPeerConnection/properties/callName</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.JoinedPeerConnection/properties/userId">userId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.JoinedPeerConnection/properties/userId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.JoinedPeerConnection/properties/userId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.JoinedPeerConnection/properties/browserId">browserId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.JoinedPeerConnection/properties/browserId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.JoinedPeerConnection/properties/browserId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.JoinedPeerConnection/properties/peerConnectionUUID">peerConnectionUUID</b> `required`
        - Type: `string`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.JoinedPeerConnection/properties/peerConnectionUUID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.JoinedPeerConnection/properties/peerConnectionUUID</i>
- Type: `object`
- <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.DetachedPeerConnection">path: #/definitions/record:org.observertc.webrtc.schemas.reports.DetachedPeerConnection</i>
- This schema <u>does not</u> accept additional properties.
- **_Properties_**
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.DetachedPeerConnection/properties/mediaUnitId">mediaUnitId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.DetachedPeerConnection/properties/mediaUnitId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.DetachedPeerConnection/properties/mediaUnitId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.DetachedPeerConnection/properties/callUUID">callUUID</b> `required`
        - Type: `string`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.DetachedPeerConnection/properties/callUUID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.DetachedPeerConnection/properties/callUUID</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.DetachedPeerConnection/properties/callName">callName</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.DetachedPeerConnection/properties/callName">path: #/definitions/record:org.observertc.webrtc.schemas.reports.DetachedPeerConnection/properties/callName</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.DetachedPeerConnection/properties/userId">userId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.DetachedPeerConnection/properties/userId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.DetachedPeerConnection/properties/userId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.DetachedPeerConnection/properties/browserId">browserId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.DetachedPeerConnection/properties/browserId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.DetachedPeerConnection/properties/browserId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.DetachedPeerConnection/properties/peerConnectionUUID">peerConnectionUUID</b> `required`
        - Type: `string`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.DetachedPeerConnection/properties/peerConnectionUUID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.DetachedPeerConnection/properties/peerConnectionUUID</i>
- Type: `object`
- <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP</i>
- This schema <u>does not</u> accept additional properties.
- **_Properties_**
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/mediaUnitId">mediaUnitId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/mediaUnitId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/mediaUnitId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/callName">callName</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/callName">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/callName</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/userId">userId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/userId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/userId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/browserId">browserId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/browserId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/browserId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/peerConnectionUUID">peerConnectionUUID</b> `required`
        - Type: `string`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/peerConnectionUUID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/peerConnectionUUID</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/ssrc">ssrc</b> `required`
        - Type: `integer`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/ssrc">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/ssrc</i>
        - Range: between -9223372036854776000 and 9223372036854776000
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/bytesReceived">bytesReceived</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/bytesReceived">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/bytesReceived</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/codecId">codecId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/codecId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/codecId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/decoderImplementation">decoderImplementation</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/decoderImplementation">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/decoderImplementation</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/estimatedPlayoutTimestamp">estimatedPlayoutTimestamp</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/estimatedPlayoutTimestamp">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/estimatedPlayoutTimestamp</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/fecPacketsDiscarded">fecPacketsDiscarded</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/fecPacketsDiscarded">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/fecPacketsDiscarded</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/fecPacketsReceived">fecPacketsReceived</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/fecPacketsReceived">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/fecPacketsReceived</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/firCount">firCount</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/firCount">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/firCount</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/framesDecoded">framesDecoded</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/framesDecoded">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/framesDecoded</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/headerBytesReceived">headerBytesReceived</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/headerBytesReceived">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/headerBytesReceived</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/id">id</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/id">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/id</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/isRemote">isRemote</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/isRemote">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/isRemote</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/jitter">jitter</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/jitter">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/jitter</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/keyFramesDecoded">keyFramesDecoded</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/keyFramesDecoded">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/keyFramesDecoded</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/lastPacketReceivedTimestamp">lastPacketReceivedTimestamp</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/lastPacketReceivedTimestamp">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/lastPacketReceivedTimestamp</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/mediaType">mediaType</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/mediaType">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/mediaType</i>
        - &#36;ref: [#/definitions/enum:org.observertc.webrtc.schemas.reports.MediaType](#/definitions/enum:org.observertc.webrtc.schemas.reports.MediaType)
        - Default: _"UNKNOWN"_
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/nackCount">nackCount</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/nackCount">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/nackCount</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/packetsLost">packetsLost</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/packetsLost">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/packetsLost</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/packetsReceived">packetsReceived</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/packetsReceived">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/packetsReceived</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/pliCount">pliCount</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/pliCount">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/pliCount</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/qpSum">qpSum</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/qpSum">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/qpSum</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/totalDecodeTime">totalDecodeTime</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/totalDecodeTime">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/totalDecodeTime</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/totalInterFrameDelay">totalInterFrameDelay</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/totalInterFrameDelay">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/totalInterFrameDelay</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/totalSquaredInterFrameDelay">totalSquaredInterFrameDelay</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/totalSquaredInterFrameDelay">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/totalSquaredInterFrameDelay</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/trackId">trackId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/trackId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/trackId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/transportId">transportId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/transportId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.InboundRTP/properties/transportId</i>
- <i id="#/definitions/enum:org.observertc.webrtc.schemas.reports.MediaType">path: #/definitions/enum:org.observertc.webrtc.schemas.reports.MediaType</i>
- The value is restricted to the following:
    1. _"AUDIO"_
    2. _"VIDEO"_
    3. _"UNKNOWN"_
    4. _"NULL"_
- Type: `object`
- <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP</i>
- This schema <u>does not</u> accept additional properties.
- **_Properties_**
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/mediaUnitId">mediaUnitId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/mediaUnitId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/mediaUnitId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/callName">callName</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/callName">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/callName</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/userId">userId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/userId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/userId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/browserId">browserId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/browserId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/browserId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/peerConnectionUUID">peerConnectionUUID</b> `required`
        - Type: `string`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/peerConnectionUUID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/peerConnectionUUID</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/ssrc">ssrc</b> `required`
        - Type: `integer`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/ssrc">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/ssrc</i>
        - Range: between -9223372036854776000 and 9223372036854776000
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/bytesSent">bytesSent</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/bytesSent">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/bytesSent</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/codecID">codecID</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/codecID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/codecID</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/encoderImplementation">encoderImplementation</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/encoderImplementation">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/encoderImplementation</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/firCount">firCount</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/firCount">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/firCount</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/framesEncoded">framesEncoded</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/framesEncoded">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/framesEncoded</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/headerBytesSent">headerBytesSent</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/headerBytesSent">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/headerBytesSent</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/id">id</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/id">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/id</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/isRemote">isRemote</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/isRemote">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/isRemote</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/keyFramesEncoded">keyFramesEncoded</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/keyFramesEncoded">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/keyFramesEncoded</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/mediaSourceID">mediaSourceID</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/mediaSourceID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/mediaSourceID</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/mediaType">mediaType</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/mediaType">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/mediaType</i>
        - &#36;ref: [#/definitions/enum:org.observertc.webrtc.schemas.reports.MediaType](#/definitions/enum:org.observertc.webrtc.schemas.reports.MediaType)
        - Default: _"UNKNOWN"_
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/nackCount">nackCount</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/nackCount">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/nackCount</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/packetsSent">packetsSent</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/packetsSent">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/packetsSent</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/pliCount">pliCount</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/pliCount">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/pliCount</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/qpSum">qpSum</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/qpSum">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/qpSum</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/qualityLimitationReason">qualityLimitationReason</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/qualityLimitationReason">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/qualityLimitationReason</i>
        - &#36;ref: [#/definitions/enum:org.observertc.webrtc.schemas.reports.RTCQualityLimitationReason](#/definitions/enum:org.observertc.webrtc.schemas.reports.RTCQualityLimitationReason)
        - Default: _"unknown"_
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/qualityLimitationResolutionChanges">qualityLimitationResolutionChanges</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/qualityLimitationResolutionChanges">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/qualityLimitationResolutionChanges</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/remoteID">remoteID</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/remoteID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/remoteID</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/retransmittedBytesSent">retransmittedBytesSent</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/retransmittedBytesSent">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/retransmittedBytesSent</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/retransmittedPacketsSent">retransmittedPacketsSent</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/retransmittedPacketsSent">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/retransmittedPacketsSent</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/totalEncodedBytesTarget">totalEncodedBytesTarget</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/totalEncodedBytesTarget">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/totalEncodedBytesTarget</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/totalEncodeTime">totalEncodeTime</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/totalEncodeTime">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/totalEncodeTime</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/totalPacketSendDelay">totalPacketSendDelay</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/totalPacketSendDelay">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/totalPacketSendDelay</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/trackID">trackID</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/trackID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/trackID</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/transportID">transportID</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/transportID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.OutboundRTP/properties/transportID</i>
- <i id="#/definitions/enum:org.observertc.webrtc.schemas.reports.RTCQualityLimitationReason">path: #/definitions/enum:org.observertc.webrtc.schemas.reports.RTCQualityLimitationReason</i>
- The value is restricted to the following:
    1. _"BANDWIDTH"_
    2. _"CPU"_
    3. _"NONE"_
    4. _"OTHER"_
    5. _"UNKNOWN"_
    6. _"NULL"_
- Type: `object`
- <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP">path: #/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP</i>
- This schema <u>does not</u> accept additional properties.
- **_Properties_**
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/mediaUnitId">mediaUnitId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/mediaUnitId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/mediaUnitId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/callName">callName</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/callName">path: #/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/callName</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/userId">userId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/userId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/userId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/browserId">browserId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/browserId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/browserId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/peerConnectionUUID">peerConnectionUUID</b> `required`
        - Type: `string`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/peerConnectionUUID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/peerConnectionUUID</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/ssrc">ssrc</b> `required`
        - Type: `integer`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/ssrc">path: #/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/ssrc</i>
        - Range: between -9223372036854776000 and 9223372036854776000
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/codecID">codecID</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/codecID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/codecID</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/id">id</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/id">path: #/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/id</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/jitter">jitter</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/jitter">path: #/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/jitter</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/localID">localID</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/localID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/localID</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/mediaType">mediaType</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/mediaType">path: #/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/mediaType</i>
        - &#36;ref: [#/definitions/enum:org.observertc.webrtc.schemas.reports.MediaType](#/definitions/enum:org.observertc.webrtc.schemas.reports.MediaType)
        - Default: _"UNKNOWN"_
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/packetsLost">packetsLost</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/packetsLost">path: #/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/packetsLost</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/roundTripTime">roundTripTime</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/roundTripTime">path: #/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/roundTripTime</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/transportID">transportID</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/transportID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.RemoteInboundRTP/properties/transportID</i>
- Type: `object`
- <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair</i>
- This schema <u>does not</u> accept additional properties.
- **_Properties_**
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/mediaUnitId">mediaUnitId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/mediaUnitId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/mediaUnitId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/callName">callName</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/callName">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/callName</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/userId">userId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/userId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/userId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/browserId">browserId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/browserId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/browserId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/peerConnectionUUID">peerConnectionUUID</b> `required`
        - Type: `string`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/peerConnectionUUID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/peerConnectionUUID</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/candidatePairId">candidatePairId</b> `required`
        - Type: `string`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/candidatePairId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/candidatePairId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/availableOutgoingBitrate">availableOutgoingBitrate</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/availableOutgoingBitrate">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/availableOutgoingBitrate</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/bytesReceived">bytesReceived</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/bytesReceived">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/bytesReceived</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/bytesSent">bytesSent</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/bytesSent">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/bytesSent</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/consentRequestsSent">consentRequestsSent</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/consentRequestsSent">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/consentRequestsSent</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/currentRoundTripTime">currentRoundTripTime</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/currentRoundTripTime">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/currentRoundTripTime</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/localCandidateID">localCandidateID</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/localCandidateID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/localCandidateID</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/nominated">nominated</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/nominated">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/nominated</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/priority">priority</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/priority">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/priority</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/remoteCandidateID">remoteCandidateID</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/remoteCandidateID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/remoteCandidateID</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/requestsReceived">requestsReceived</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/requestsReceived">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/requestsReceived</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/requestsSent">requestsSent</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/requestsSent">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/requestsSent</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/responsesReceived">responsesReceived</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/responsesReceived">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/responsesReceived</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/responsesSent">responsesSent</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/responsesSent">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/responsesSent</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/state">state</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/state">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/state</i>
        - &#36;ref: [#/definitions/enum:org.observertc.webrtc.schemas.reports.ICEState](#/definitions/enum:org.observertc.webrtc.schemas.reports.ICEState)
        - Default: _"UNKNOWN"_
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/totalRoundTripTime">totalRoundTripTime</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/totalRoundTripTime">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/totalRoundTripTime</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/transportID">transportID</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/transportID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/transportID</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/writable">writable</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/writable">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICECandidatePair/properties/writable</i>
- <i id="#/definitions/enum:org.observertc.webrtc.schemas.reports.ICEState">path: #/definitions/enum:org.observertc.webrtc.schemas.reports.ICEState</i>
- The value is restricted to the following:
    1. _"FAILED"_
    2. _"FROZEN"_
    3. _"IN_PROGRESS"_
    4. _"SUCCEEDED"_
    5. _"WAITING"_
    6. _"UNKNOWN"_
    7. _"NULL"_
- Type: `object`
- <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate</i>
- This schema <u>does not</u> accept additional properties.
- **_Properties_**
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/mediaUnitId">mediaUnitId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/mediaUnitId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/mediaUnitId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/callName">callName</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/callName">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/callName</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/userId">userId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/userId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/userId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/browserId">browserId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/browserId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/browserId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/peerConnectionUUID">peerConnectionUUID</b> `required`
        - Type: `string`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/peerConnectionUUID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/peerConnectionUUID</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/candidateId">candidateId</b> `required`
        - Type: `string`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/candidateId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/candidateId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/candidateType">candidateType</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/candidateType">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/candidateType</i>
        - &#36;ref: [#/definitions/enum:org.observertc.webrtc.schemas.reports.CandidateType](#/definitions/enum:org.observertc.webrtc.schemas.reports.CandidateType)
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/deleted">deleted</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/deleted">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/deleted</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/ipLSH">ipLSH</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/ipLSH">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/ipLSH</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/isRemote">isRemote</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/isRemote">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/isRemote</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/port">port</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/port">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/port</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/priority">priority</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/priority">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/priority</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/protocol">protocol</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/protocol">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/protocol</i>
        - &#36;ref: [#/definitions/enum:org.observertc.webrtc.schemas.reports.TransportProtocol](#/definitions/enum:org.observertc.webrtc.schemas.reports.TransportProtocol)
        - Default: _"UNKNOWN"_
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/transportID">transportID</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/transportID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICERemoteCandidate/properties/transportID</i>
- <i id="#/definitions/enum:org.observertc.webrtc.schemas.reports.CandidateType">path: #/definitions/enum:org.observertc.webrtc.schemas.reports.CandidateType</i>
- The value is restricted to the following:
    1. _"HOST"_
    2. _"PRFLX"_
    3. _"RELAY"_
    4. _"SRFLX"_
    5. _"UNKNOWN"_
    6. _"NULL"_
- <i id="#/definitions/enum:org.observertc.webrtc.schemas.reports.TransportProtocol">path: #/definitions/enum:org.observertc.webrtc.schemas.reports.TransportProtocol</i>
- The value is restricted to the following:
    1. _"UDP"_
    2. _"TCP"_
    3. _"UNKNOWN"_
    4. _"NULL"_
- Type: `object`
- <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate</i>
- This schema <u>does not</u> accept additional properties.
- **_Properties_**
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/mediaUnitId">mediaUnitId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/mediaUnitId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/mediaUnitId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/callName">callName</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/callName">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/callName</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/userId">userId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/userId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/userId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/browserId">browserId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/browserId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/browserId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/peerConnectionUUID">peerConnectionUUID</b> `required`
        - Type: `string`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/peerConnectionUUID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/peerConnectionUUID</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/candidateId">candidateId</b> `required`
        - Type: `string`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/candidateId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/candidateId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/candidateType">candidateType</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/candidateType">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/candidateType</i>
        - &#36;ref: [#/definitions/enum:org.observertc.webrtc.schemas.reports.CandidateType](#/definitions/enum:org.observertc.webrtc.schemas.reports.CandidateType)
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/deleted">deleted</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/deleted">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/deleted</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/ipLSH">ipLSH</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/ipLSH">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/ipLSH</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/isRemote">isRemote</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/isRemote">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/isRemote</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/networkType">networkType</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/networkType">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/networkType</i>
        - &#36;ref: [#/definitions/enum:org.observertc.webrtc.schemas.reports.NetworkType](#/definitions/enum:org.observertc.webrtc.schemas.reports.NetworkType)
        - Default: _"UNKNOWN"_
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/port">port</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/port">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/port</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/protocol">protocol</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/protocol">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/protocol</i>
        - &#36;ref: [#/definitions/enum:org.observertc.webrtc.schemas.reports.TransportProtocol](#/definitions/enum:org.observertc.webrtc.schemas.reports.TransportProtocol)
        - Default: _"UNKNOWN"_
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/priority">priority</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/priority">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/priority</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/transportID">transportID</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/transportID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ICELocalCandidate/properties/transportID</i>
- <i id="#/definitions/enum:org.observertc.webrtc.schemas.reports.NetworkType">path: #/definitions/enum:org.observertc.webrtc.schemas.reports.NetworkType</i>
- The value is restricted to the following:
    1. _"BLUETOOTH"_
    2. _"CELLULAR"_
    3. _"ETHERNET"_
    4. _"UNKNOWN"_
    5. _"VPN"_
    6. _"WIFI"_
    7. _"WIMAX"_
    8. _"NULL"_
- Type: `object`
- <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Track</i>
- This schema <u>does not</u> accept additional properties.
- **_Properties_**
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/mediaUnitId">mediaUnitId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/mediaUnitId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/mediaUnitId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/callName">callName</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/callName">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/callName</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/userId">userId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/userId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/userId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/browserId">browserId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/browserId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/browserId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/peerConnectionUUID">peerConnectionUUID</b> `required`
        - Type: `string`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/peerConnectionUUID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/peerConnectionUUID</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/trackId">trackId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/trackId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/trackId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/concealedSamples">concealedSamples</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/concealedSamples">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/concealedSamples</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/concealmentEvents">concealmentEvents</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/concealmentEvents">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/concealmentEvents</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/detached">detached</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/detached">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/detached</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/ended">ended</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/ended">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/ended</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/framesDecoded">framesDecoded</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/framesDecoded">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/framesDecoded</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/framesDropped">framesDropped</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/framesDropped">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/framesDropped</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/framesSent">framesSent</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/framesSent">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/framesSent</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/framesReceived">framesReceived</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/framesReceived">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/framesReceived</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/hugeFramesSent">hugeFramesSent</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/hugeFramesSent">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/hugeFramesSent</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/insertedSamplesForDeceleration">insertedSamplesForDeceleration</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/insertedSamplesForDeceleration">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/insertedSamplesForDeceleration</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/jitterBufferDelay">jitterBufferDelay</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/jitterBufferDelay">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/jitterBufferDelay</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/jitterBufferEmittedCount">jitterBufferEmittedCount</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/jitterBufferEmittedCount">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/jitterBufferEmittedCount</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/mediaSourceID">mediaSourceID</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/mediaSourceID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/mediaSourceID</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/mediaType">mediaType</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/mediaType">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/mediaType</i>
        - &#36;ref: [#/definitions/enum:org.observertc.webrtc.schemas.reports.MediaType](#/definitions/enum:org.observertc.webrtc.schemas.reports.MediaType)
        - Default: _"UNKNOWN"_
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/remoteSource">remoteSource</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/remoteSource">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/remoteSource</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/removedSamplesForAcceleration">removedSamplesForAcceleration</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/removedSamplesForAcceleration">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/removedSamplesForAcceleration</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/samplesDuration">samplesDuration</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/samplesDuration">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/samplesDuration</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/silentConcealedSamples">silentConcealedSamples</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/silentConcealedSamples">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/silentConcealedSamples</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/totalSamplesReceived">totalSamplesReceived</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/totalSamplesReceived">path: #/definitions/record:org.observertc.webrtc.schemas.reports.Track/properties/totalSamplesReceived</i>
- Type: `object`
- <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource">path: #/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource</i>
- This schema <u>does not</u> accept additional properties.
- **_Properties_**
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/mediaUnitId">mediaUnitId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/mediaUnitId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/mediaUnitId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/callName">callName</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/callName">path: #/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/callName</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/userId">userId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/userId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/userId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/browserId">browserId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/browserId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/browserId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/peerConnectionUUID">peerConnectionUUID</b> `required`
        - Type: `string`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/peerConnectionUUID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/peerConnectionUUID</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/mediaSourceId">mediaSourceId</b> `required`
        - Type: `string`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/mediaSourceId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/mediaSourceId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/audioLevel">audioLevel</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/audioLevel">path: #/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/audioLevel</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/framesPerSecond">framesPerSecond</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/framesPerSecond">path: #/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/framesPerSecond</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/height">height</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/height">path: #/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/height</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/width">width</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/width">path: #/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/width</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/mediaType">mediaType</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/mediaType">path: #/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/mediaType</i>
        - &#36;ref: [#/definitions/enum:org.observertc.webrtc.schemas.reports.MediaType](#/definitions/enum:org.observertc.webrtc.schemas.reports.MediaType)
        - Default: _"UNKNOWN"_
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/totalAudioEnergy">totalAudioEnergy</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/totalAudioEnergy">path: #/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/totalAudioEnergy</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/totalSamplesDuration">totalSamplesDuration</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/totalSamplesDuration">path: #/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/totalSamplesDuration</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/trackId">trackId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/trackId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.MediaSource/properties/trackId</i>
- Type: `object`
- <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.UserMediaError">path: #/definitions/record:org.observertc.webrtc.schemas.reports.UserMediaError</i>
- This schema <u>does not</u> accept additional properties.
- **_Properties_**
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.UserMediaError/properties/mediaUnitId">mediaUnitId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.UserMediaError/properties/mediaUnitId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.UserMediaError/properties/mediaUnitId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.UserMediaError/properties/callName">callName</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.UserMediaError/properties/callName">path: #/definitions/record:org.observertc.webrtc.schemas.reports.UserMediaError/properties/callName</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.UserMediaError/properties/userId">userId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.UserMediaError/properties/userId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.UserMediaError/properties/userId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.UserMediaError/properties/browserId">browserId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.UserMediaError/properties/browserId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.UserMediaError/properties/browserId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.UserMediaError/properties/peerConnectionUUID">peerConnectionUUID</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.UserMediaError/properties/peerConnectionUUID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.UserMediaError/properties/peerConnectionUUID</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.UserMediaError/properties/message">message</b> `required`
        - Type: `string`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.UserMediaError/properties/message">path: #/definitions/record:org.observertc.webrtc.schemas.reports.UserMediaError/properties/message</i>
- Type: `object`
- <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ExtensionReport">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ExtensionReport</i>
- This schema <u>does not</u> accept additional properties.
- **_Properties_**
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ExtensionReport/properties/mediaUnitId">mediaUnitId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ExtensionReport/properties/mediaUnitId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ExtensionReport/properties/mediaUnitId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ExtensionReport/properties/callName">callName</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ExtensionReport/properties/callName">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ExtensionReport/properties/callName</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ExtensionReport/properties/userId">userId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ExtensionReport/properties/userId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ExtensionReport/properties/userId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ExtensionReport/properties/browserId">browserId</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ExtensionReport/properties/browserId">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ExtensionReport/properties/browserId</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ExtensionReport/properties/peerConnectionUUID">peerConnectionUUID</b> `required`
        - Type: `string`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ExtensionReport/properties/peerConnectionUUID">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ExtensionReport/properties/peerConnectionUUID</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ExtensionReport/properties/extensionType">extensionType</b> `required`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ExtensionReport/properties/extensionType">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ExtensionReport/properties/extensionType</i>
    - <b id="#/definitions/record:org.observertc.webrtc.schemas.reports.ExtensionReport/properties/payload">payload</b> `required`
        - Type: `string`
        - <i id="#/definitions/record:org.observertc.webrtc.schemas.reports.ExtensionReport/properties/payload">path: #/definitions/record:org.observertc.webrtc.schemas.reports.ExtensionReport/properties/payload</i>
- <i id="#/definitions/enum:org.observertc.webrtc.schemas.reports.ReportType">path: #/definitions/enum:org.observertc.webrtc.schemas.reports.ReportType</i>
- The value is restricted to the following:
    1. _"UNKNOWN"_
    2. _"INITIATED_CALL"_
    3. _"FINISHED_CALL"_
    4. _"JOINED_PEER_CONNECTION"_
    5. _"DETACHED_PEER_CONNECTION"_
    6. _"INBOUND_RTP"_
    7. _"REMOTE_INBOUND_RTP"_
    8. _"OUTBOUND_RTP"_
    9. _"MEDIA_SOURCE"_
    10. _"TRACK"_
    11. _"ICE_CANDIDATE_PAIR"_
    12. _"ICE_REMOTE_CANDIDATE"_
    13. _"ICE_LOCAL_CANDIDATE"_
    14. _"USER_MEDIA_ERROR"_
    15. _"EXTENSION"_

_Generated with [json-schema-md-doc](https://brianwendt.github.io/json-schema-md-doc/)_