### The purpose of this config

The config files in this folder replace a string with regex for all the repositories in networknt and lightapi in develop branch. It is typically used to upgrade version of a library across repositories.

Please note that this task can be executed several times if any repository is missing from the previous execution.

There are three steps in the task

* checkout
* replace
* checkin

You can skip steps in regex-replace.yml in the config folder. For example, you can skip the checkin step so that you can verify the replacements. Once confirmed, you can skip checkout and replace steps and execute the checkin step only.

To seach a string in a directory:

```
cd ~/regexreplace
grep -R --include="pom.xml" "2.9.1" .
```


### Prepare the environment

If this is your first time to use light-bot, then you need to clone both light-bot and light-config-test repository to a workspace and follow the instructions below to build light-bot.

https://www.networknt.com/tutorial/bot/build-light-bot/

### To start the command line

```
java -Dlight-4j-config-dir=./config -Dlogback.configurationFile=./logback.xml -jar ~/networknt/light-bot/bot-cli/build/libs/bot-cli-fat-1.0.jar -t regex-replace
```

Or

```
./run.sh
```

After the first run, you can use the following command to check if the 2.9.1 still exists in the workspace.

```
cd ~/regexreplace
grep -R --include="pom.xml" "2.9.1" .
```
You can also, use "git status" to check how many files are updated.
