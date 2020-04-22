### The final configuration has been moved to the taiji-chain/light-config-test due to security reason.


This is the folder that contains the docker-compose files to start the light-portal hybrid-query and hybrid-command servers on the test cloud. 

There are four servers that will be involved for query0, query1, query2 and command.

test1, test2, test3 and portal. 

### Environment

We are using a shared Kafka cluster with Taiji Blockchain and it is readily available.

### Start

To start the service on portal

```
docker-compose -f docker-compose-portal.yml up -d
```

To start the service on test1

```
docker-compose -f docker-compose-test1.yml up -d
```

To start the service on test2

```
docker-compose -f docker-compose-test2.yml up -d
```

To start the service on test3

```
docker-compose -f docker-compose-test3.yml up -d
```

