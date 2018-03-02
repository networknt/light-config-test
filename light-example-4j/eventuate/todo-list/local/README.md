## Local Service StartUp:


Services built on top of light-eventuate-4j need infrastructure services to run. Which includes event store and CDC service
The event-store can be start by following step:  Documented in [getting started](https://www.networknt.com/tutorial/eventuate/getting-started/)


### Setting DOCKER_HOST_IP for Mac

You can install Mysql, Kafka individually and start them at OS level and it is the only option if you are using Windows. However, the most convenient way is to use docker-compose to run the application services and eventuate infrastructure services: Mysql, Zookeeper, Kafka and CDC server.

There is no special configuration for Linux as Docker is native. On Mac, Docker still runs within a VM so you need to setup OS environment variable DOCKER_HOST_IP.

This variable sets the advertised listener of the Kafka container. It must be an IP address (or a DNS name) that is accessible from both Docker containers and, if you want to do development, from applications running on the host. Unfortunately, because of version/platform-specific variations in how Docker works, setting this variable is a little tricky.

Docker for Mac has networking limitations and you need to follow the steps below to set it up.


```
sudo ifconfig lo0 alias 10.200.10.1/24  # (where 10.200.10.1 is some unused IP address)
export DOCKER_HOST_IP=10.200.10.1

```

### Start Event Store and CDC service

Run the following commands at the same location as this README.md

```
cd ~/networknt/light-config-test/light-example-4j/eventuate/todo-list/local

docker-compose -f docker-compose-eventuate-cdc.yml

```