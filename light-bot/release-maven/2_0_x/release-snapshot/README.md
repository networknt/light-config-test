### The purpose of this config

The config files in this folder is to release all modules in networknt org to maven central. 

The following actions will be taken.

1. checkout all repos from develop
2. merge to master
3. generate and checkin changelog.md
4. build and release master to maven central
5. update github.com release note
6. merge generated changelog.md back to develop


### Prepare the environment

This is a one time work and all other light-bot tasks in light-config-test won't need to do it again. 
If this is your first time to use light-bot, then  you need to checkout both light-bot and light-config-test 
repository to a workspace.

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

```
java -Dlight-4j-config-dir=./config -Dlogback.configurationFile=./logback.xml -jar ~/networknt/light-bot/bot-cli/build/libs/bot-cli-fat-1.0.jar -t release-maven
```


