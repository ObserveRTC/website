---
title: "Getting Started"
linkTitle: "Getting Started"
weight: 3
description: >
  Let's get start monitoring your WebRTC applications!
---
## Prerequisites

**[Kafka](https://apache.org/kafka)** is used to forward reports from the WebRTC-Observer. 
The [Reports](TODO-Link-to-Reports) are being forwarded to Kafka for processing to be consumed by the exporter (e.g. Kafka connectors).

## Install & Run WebRTC-Observer 

In this quickstart we use [Docker](https://docker.io) to demonstrate a 
simple local deployment of the service. For kubernetes deployment  
please check out our [tutorial]({{< ref "webrtc-observer-helm.md" >}}) for it.

1. Clone the docker targeted deployment repository:
```
git clone https://github.com/ObserveRTC/docker-webrtc-observer
```
This will clone the necessary files to your local machine 
in order to run the observer in a container.

2. Run the docker image
```
cd docker-webrtc-observer
docker-compose up
```
This will run the container locally, 
opening the port `7080` to receive samples from integrations.

## Install & Run WebExtrApp

To tryout webrtc locally

Currently we support [Jitsi](https://jitsi.org), and [TokBox](https://www.vonage.com/communications-apis/video/) integrations. 
The integration is described in the appropriate tutorials, 
here, for simplicity we use a local webrtc call

1. Clone and install the core library
```
git clone https://github.com/ObserveRTC/webextrapp
cd webextrapp 
npm install -g typescript
npm ci 
npm run build-library-dev 
```

2. Configure the local development integration to point to your server 

Navigate yourself to 
```
cd __test__/example-demo/js/
nano integrations.js
```

And check if the `wsServerURL` points to `localhost:7080`. 
The rest of the URL is explained in our tutorials

3. Run the local server by `npm run start-server`
4. Go to `localhost:9090`, and start a call.

## Process Reports

Once you initiated a flow from your local integrations 
to the Observer, you can observe Reports by consuming a kafka topics.
By default Observer forward reports to the `reports` topic, so you 
can check the occurrences with `kafkacat`.

```
kafkacat -b localhost:9092 -t reports -C
```

Once the report has appeared you can process or save it by using your 
favored stream processors, which can read kafka (i.e.: Kafka Connectors).

{{% pageinfo %}}
Note: If you want to run a specific version of the WebRTC-Observer,
please checkout the proper release tags llisted in [here](https://github.com/ObserveRTC/docker-webrtc-observer/releases)
{{% /pageinfo %}}