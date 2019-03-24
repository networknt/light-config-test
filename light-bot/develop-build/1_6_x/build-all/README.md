### The purpose of this config

The config files in this folder is just build the entire develop branch for all networknt repositories. This 
is used for developers who is working on the networknt project or working on a service based on the develop
branch frameworks. For most users who is building service, it is recommended to use released version of
frameworks. To build develop branch yourself and work with it only when you have encounter a bug or need a
feature that is not released yet. 

This task will checkout all repositories from networknt and switch to develop branch and build them all with
"mvn clean install" with all test skipped. 


### Prepare the environment

This is a one time work and all other tasks in light-config-test won't need to do it again. If this is your first
time to use light-bot, then you need to checkout both light-bot and light-config-test repository to a workspace.

I am using networknt under my user home directory as workspace and all scripts are based on that assumtpion. If
you want use another folder as your workspace, please fork the light-config-test repo and update the scripts
accordingly. 

```
cd ~
mkdir networknt
git clone https://github.com/networknt/light-bot.git
git clone https://github.com/networknt/light-config-test.git
cd light-bot
./gradlew build
```

Now you should have light-bot built already. 

### To start the command line

Run the following command at the same location as this README.md

```
java -Dlight-4j-config-dir=./config -Dlogback.configurationFile=./logback.xml -jar ~/networknt/light-bot/bot-cli/build/libs/bot-cli-fat-1.0.jar -t develop-build
```


