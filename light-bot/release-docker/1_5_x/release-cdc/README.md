### The purpose of this config

The config files in this folder are used to release docker images to docker hub for cdc servers. The reason both light-eventuate-4j and light-tram-4j cdc servers are released separately is due to the dependency on the docker-compose-integrate-test.yml for other docker releases and both cdc servers are up running in the docker-compose-integration-test.yml config. This should be done after the release-docker/release-all.

Note: The docker-compose-integration-test.yml must be down before running this task.


### Prepare the environment

If this is your first time to use light-bot, then you need to clone both light-bot and light-config-test repository to a workspace and follow the instructions below to build light-bot.

https://www.networknt.com/tutorial/bot/build-light-bot/

### To start the command line

```
java -Dlight-4j-config-dir=./config -Dlogback.configurationFile=./logback.xml -jar ~/networknt/light-bot/bot-cli/build/libs/bot-cli-fat-1.0.jar -t release-docker
```

Or

```
./run.sh
```
