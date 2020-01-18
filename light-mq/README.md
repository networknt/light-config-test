This folder contains docker-compose.yml to start mqproducer and mqconsumer examples at the same time. These two examples are part of the light-mq that is a commercial component offered by Network New Technologies Inc. for our enterprise customers who have application integration with IBM MQ. If you are interested in buying the license, please contact sales@lightapi.net

Before starting the docker-compose in this folder, please start the MQ docker container first. 

```
docker run --env LICENSE=accept \
           --env MQ_QMGR_NAME=QM1 \
           --env MQ_APP_PASSWORD=passw0rd \
           --publish 1414:1414 \
           --publish 9443:9443 \
           --detach \
           ibmcom/mq
```

Once the MQ is up and running, you can start the docker-compose

```
docker-compose up -d
```

For documentation on this component, please refer to [light-mq document]()

For tutorial on the above example, please refer to [light-mq tutorial]()

