### light-router configuration for taiji-faucet on faucet.tiaji.io

This folder contains configuration for light-router running on the portal to serve SPA applications for multiple domains (taiji.io, lightapi.net, networknt.com) in the cloud environment to connect to consul server in order to assist clients that cannot use client module such as client is not built in Java 8 or not even in Java.

Unlike other services deployed on the Kubernetes cluster, the light-router must have a static IP address and it is responsible for service discovery on the Kubernetes from Consul server. Also it is resposible for serving the single page application. For a single domain example, please take a look at the sibling project taiji-faucet in the parent folder.

In our own dev cloud, this server will be deployed to the portal node as a docker image.

All config file can be loaded in the config folder.

To start the server with docker command line.

```
docker run -p 8443:8443 -v /home/steve/networknt/light-config-test/light-router/cloud/config:/config networknt/light-router
```


To start the server with docker-compose

```
docker-compose up
```
