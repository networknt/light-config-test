This is the docker-compose that start both comamnd server and query server together for light-portal services. The first step is to use this setup to test the user-command and user-query services. 

This folder is purely for local development and debugging. The configurations can be used by IDE to start both hybrid-command and hybrid-query servers together in two IDE windows. 


### Environment

You need to start the confluent locally. I have it installed in the `~/tool` folder.

```
cd ~/tool/confluent-5.4.1/bin
confluent local start
```

You can use the following command to checked the status. 

```
confluent local status
```

To stop it.

```
confluent local stop
```

Before starting this docker-compose, please start the consul server locally. 

```
cd ~/networknt/light-docker
docker-compose -f docker-compose-consul.yml up -d
```

### Start

To start the portal services

```
docker-compose up -d
```

