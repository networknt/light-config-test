### The purpose of this config

The config files in this folder are used to publish light-codegen docker images to docker hub for each release. It should be done after the release-maven task for all other modules when all jar files can be accessed from maven central.

light-codegen is not included the release-all as it is built in docker and jar files from maven central won't be available immediately after release-maven task.


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
