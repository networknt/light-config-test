### The purpose of this config

The config files in this folder upgrade version for all the repositories in networknt in develop branch. It is to prepare for the next release cycle after a new release. It must be executed after release-maven and release-docker tasks.

Please note that this task can be executed several times if any repository is missing from the previous execution.

To check if all versions are updated:

```
cd ~/versionupgrade
grep -R --include="pom.xml" "1.5.11" .
```


### Prepare the environment

If this is your first time to use light-bot, then you need to clone both light-bot and light-config-test repository to a workspace and follow the instructions below to build light-bot.

https://www.networknt.com/tutorial/bot/build-light-bot/

### To start the command line

```
java -Dlight-4j-config-dir=./config -Dlogback.configurationFile=./logback.xml -jar ~/networknt/light-bot/bot-cli/build/libs/bot-cli-fat-1.0.jar -t version-upgrade
```

Or

```
./run.sh
```
