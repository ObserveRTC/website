---
title: "Another Tutorial"
date: 2017-01-05
weight: 5
description: >
  A detailed description of the jitsi integration for WebExtrApp
---

Please clone the [integrations](https://github.com/ObserveRTC/integrations) repository for this tutorial.

#### Build library with proper configuration parameter ( optional )

- Goto [index.json](library.config/index.json) file.

- Change `libraryName` to `Jitsi`

- Change `poolingIntervalMs` to suitable interval if needed. Recommended `1000`

- Change the `wsServer` options accordingly ( ***not mandatory since we can use jitsimeet `config.js` to pass configuration***)

  - `URL` - WebSocket server URL
  - `ServiceUUID` - An uniqueue UUID that you are going to use for your service
  - `MediaUnitID` - Media unit ID name
  - `StatsVersion` - v20200114 ( preferred to use latest version always)

- Build library. It will create a compiled JavaScript library that we will be able to use with JitsiMeet in `dist` folder

  - Production version

    -  `npm run build-library-prod`

  - Developer version

    -  `npm run build-library-dev`



#### Use the library in Jitsi project

For existing installations and typical deployments you can simply add a few lines to the end of the `meet-[your-domain]-config.js` configuration file.
This is usually located under `/etc/jitsi/meet` in the Debian installation.

#### Edit config.js in your already installed jitsi-meet

Goto your `config.js` file from jitsi-meet `config` folder.

```$xslt
nano /etc/jitsi/meet/meet.my.domain-config.js
```

And add these two implementation specific variable at the very end of the file.

```javascript
config.analytics.observerPoolingIntervalInMs = 1000
config.observerWsEndpoint = "wss://websocket_server_url/service_uuid/media_unit_id/stats_version/json"
```

Make sure to specify your `service_uuid` and a unique string for `media_unit_id` to indentify this specific Jitsi Meet instance .

#### Docker builds

Do the following if you are building from Docker.

You will need to pass the integration specific configuration using `config.js` before building the container. Goto your jitsi-meet `settings-config.js`and add the following:

```javascript
// observer rtc related config

{{ if .Env.POOLING_INTERVAL_IN_MS -}}
config.analytics.observerPoolingIntervalInMs = '{{ .Env.OBSERVER_POOLING_INTERVAL_IN_MS }}';
{{ end -}}


{{ if .Env.OBSERVER_WS_ENDPOINT -}}
config.observerWsEndpoint = '{{ .Env.OBSERVER_WS_ENDPOINT }}';
{{ end -}}
```

- Now, if we build a new jitsi-meet container, these two environment variable will be present in `config.js` when jitsi-meet is loaded.


### Integrate the observerRTC library in your Jitsi Meet HTML

To load the observerRTC library, we need to edit the Jitsi Meet webpage.

Goto your JitsiMeet  `index.html` page:

```$xslt
nano /usr/share/jitsi-meet/index.html
```

Add these two file after the line where `config.js` script is loaded:
```javascript
<script src="https://observertc.github.io/webextrapp/dist/observer.min.js"></script>
<script src="https://observertc.github.io/integrations/dist/jitsi.integration.min.js"></script>
```

This should look something like:
```$html
    <!--... --> 
    <!--#include virtual="static/settingsToolbarAdditionalContent.html" -->

    <!-- Added manually as part of Observe RTC installation; using full, unminified versions -->
    <script src="https://observertc.github.io/webextrapp/dist/observer.js"></script>
    <script src="https://observertc.github.io/integrations/dist/jitsi.integration.js"></script>

  </head>
  <body>
    <!--#include virtual="body.html" -->
    <div id="react"></div>
  </body>
</html>

```

Reload the Jitsi Meet page from browser to apply changes. Jitsi Meet now integrated. 