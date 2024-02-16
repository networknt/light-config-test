### The purpose of this config

The config files in this folder is for building light-portal in networknt workspace.

The following is done in this task.

1. Clone related repositories into ~/networknt and swtich to develop branch if directory doesn't exist.
2. Pull from remote git server if repository exist.
3. Build all of them in sequence.
4. Test with all integration tests
5. Copy files if the section is defined.


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
cd ~/networknt/light-config-test/light-bot/develop-build/build-portal
java -Dlight-4j-config-dir=./config -Dlogback.configurationFile=./logback.xml -jar ~/networknt/light-bot/bot-cli/build/libs/bot-cli-fat-1.0.jar -t develop-build
```
