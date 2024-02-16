### light-router configuration for taiji-faucet on faucet.tiaji.io

This folder contains configuration for light-router running on the portal(faucet.taiji.io) cloud environment to connect to consul server in order to assist clients that cannot use client module such as client is not built in Java 8 or not even in Java.

Unlike other services deployed on the Kubernetes cluster, the light-router must have a static IP address and it is responsible for service discovery on the Kubernetes from Consul server.

In our own dev cloud, this server will be deployed to the portal node as a docker image.

All config file can be loaded in the config folder.

To start the server with docker command line.

```
docker run -p 443:8443 -v /home/steve/networknt/light-config-test/light-router/cloud/config:/config networknt/light-router
```


To start the server with docker-compose

```
docker-compose up
```
