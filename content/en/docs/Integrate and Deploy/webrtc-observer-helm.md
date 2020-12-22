---
title: "Option 2: Helm Deployment"
date: 2020-12-20
weight: 5
description: >
  A detailed description of the docker deployments for the WebRTC-Observer service.
---
Deploying ObserveRTC applications as Helm Charts is 
the easiest way to get started with our applications on Kubernetes. 
Our application containers and charts are continuously 
updated when new versions are made available. 

## Prerequisite

To install observer through helm you need to make sure you 
have [helm](https://helm.sh) installed, and the kubectl is 
configured into the right context. 

## Install

1. Add the observertc helm repository to your local repos.

```shell
  helm repo add observertc https://observertc.github.io/helm/
```

2. Verify that observertc is added by typing `helm search repo observertc`.
You should see something like this:
```shell
NAME                            CHART VERSION   APP VERSION     DESCRIPTION                                       
observertc/webrtc-observer      0.6.2           0.6-alpha       A microservice to
```

You probably need to configure the observer, so take a chance 
and define your own `values.yaml` based on the [default one](https://github.com/ObserveRTC/helm/blob/main/webrtc-observer/values.yaml).

3. Install

If you saved your configuration into `values.yaml`, then:
```shell
  helm install my-release -f values.yaml observertc/webrtc-observer
```

## Uninstall

To uninstall/delete the `my-release` deployment:

```bash
$ helm delete --purge my-release
```

## Referneces

 * [Helm](https://helm.sh)
 * [ObserveRTC Helm repository](https://github.com/ObserveRTC/helm)

