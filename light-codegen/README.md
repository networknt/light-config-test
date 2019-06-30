We are planning to bring the light-codegen service online in the cloud so that users won't need to checkout and build light-codegen locally. As we have both jdk8 1.6.x branch and jdk11 2.0.x branch today, we need to have multiple instances running at the same time and let the users to pick the version on the UI. At this moment, we don't know if we need to support the 2.0.x-SNAPSHOT version or not. It will be decided later upon user's request. 

We should have at least two instances of the servers and the UI will access these services thought light-router. 

light-codegen is built on top of light-hybrid-4j framework and we are going to deploy it to the light-portal server. There are two instances of light-portal hybrid servers. The main one is on 2.0.x branch and the other one is on the 1.6.x branch for light-codegen web only. 

These two hybrid servers will have the same serviceId but in the server.yml, environment is steup to the version of the framework. 

When UI is calling to the light-codegen service, it will pass the environment in the header and the light-router will look up the right service from the environment. 



Once the server is up. You can test it with the following command for the 2_0_x codegen

```
curl -k -X POST https://localhost:8440/codegen -H 'Content-Type: application/json' -d '{"host":"lightapi.net","service":"codegen","action":"listFramework","version":"0.0.1"}'
```

You can test it with the following command for the 1_6_x codegen

```
curl -k -X POST https://localhost:8439/codegen -H 'Content-Type: application/json' -d '{"host":"lightapi.net","service":"codegen","action":"listFramework","version":"0.0.1"}'
```

To access the services through light-router. 

### docker-compose

There are two docker-compose files.

docker-compose.yaml and docker-compose-local

The docker-compose.yaml is used to deploy on the devops server. 
The docker-compose-local is used for local testing. 

The major difference is the consul server that is using. The local has configuration to use local consul server started from networknt/light-docker. And the normal docker-compose has config files to connect to the Consul cluster on the cloud. 

