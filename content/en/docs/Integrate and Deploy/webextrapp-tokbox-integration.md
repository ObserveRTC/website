---
title: "TokBox Integration"
date: 2020-12-20
weight: 4
description: >
  A detailed Tokbox integration of WebExtrApp
---

Please clone the [integrations](https://github.com/ObserveRTC/integrations) repository for this tutorial. 

Currently we do not have a method for configuring `observer.js` outside of a custom build.
You will need to build the package yourself.

### Build the package yourself

Follow the steps below to build the package from scratch.

#### Install dependencies

- Make sure we have type script installed in the system
  - `npm install -g typescript`
- Install package dependencies
  - `npm ci`

### Build library with proper configuration parameter

- Goto [index.json](library.config/index.json) file.
- Change `libraryName` to `TokBox`
- Change `poolingIntervalMs` to suitable interval if needed. Recommended `1000`
- Change the `wsServer` options accordingly
  - `URL` - WebSocket server URL
  - `ServiceUUID` - An uniqueue UUID that you are going to use for your service
  - `MediaUnitID` - Media unit ID name
  - `StatsVersion` - v20200114 ( preferred to use latest version always)
- Build library. It will create a compiled JavaScript library that we will be able to use with TokBox in `dist` folder
  - Production version
    -  `npm run build-library-prod`
  - Developer version
    -  `npm run build-library-dev`


### Add to your OpenTok web app

1. Define server endpoint in global( window ) scope
```javascript
let URL = "wss://webrtc-observer.org/";
let ServiceUUID = "";
let MediaUnitID = "Prod_server1";
let StatsVersion = "20200114";
let observerWsEndPoint = URL + ServiceUUID + "/" + MediaUnitID + "/v" + StatsVersion + "/json";
`````

2. Include core library before including `opentok.js` file in your html page

```javascript 
    <script src="https://observertc.github.io/webextrapp/dist/observer.js"></script> 
```

3. There are two ways to include the integration library

  - Build it by yourself, and include the currently build tokbox integration library after adding `observer.js`

    ```javascript
       <script src="/your/server/cdn/tokbox.integration.js"></script>
    ```

  - Or you can also use the prebuilt library from this link. It has both minified and non minified version

    - Non minified version
      ```html
        <script src="https://observertc.github.io/integrations/dist/tokbox.integration.js"></script>
      ```
    - Minified version
      ```html
        <script src="https://observertc.github.io/integrations/dist/tokbox.integration.min.js"></script>
      ```

An example can be found in [TokBox demo folder](https://github.com/ObserveRTC/integrations/blob/main/__test__/tokbox/index.html#L3).

