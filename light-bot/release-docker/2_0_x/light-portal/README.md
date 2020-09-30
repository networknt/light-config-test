### The purpose of this config

The config files in this folder are used to build and publish all the docker images for the light-portal. As the project is not open sourced, there is no need to publish any release information to the github or git.lightapi.net sites.
 
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
