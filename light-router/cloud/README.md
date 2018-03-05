### light-router setup on cloud server

This folder contains configuration for light-router running on the cloud environment
to connect to consul server in order to assist clients that cannot use client module
such as client is not built in Java 8 or not even in Java. 

Unlike other services deployed on the Kubernetes cluster, the light-router must have
a static IP address and it is responsible for service discovery on the Kubernetes from
Consul server. 

In our own dev cloud, this server will be deployed to the Kubernetes master node as
a docker image. 

All config file can be loaded in the config folder.

To start the server. 

```

```
