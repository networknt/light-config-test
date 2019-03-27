### The purpose of this config

The config files in this folder are used to re-publish the light-oauth2 images to docker hub. It happens after a patch is applied to modules of light-oauth2 and you want to publish to docker hub only without generating
changelog and update github.com for a new release. The release version should be the same as this is only a patch and there is no impact for people who are using it. It is also a template to publish a patch for other docker image. 
 
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
