### The purpose of this config

The config files in this folder is to backup GitHub reposistories to internal Git server. Also, sync the updated sync branch to the GitHub from the internal Git server.


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
java -Dlight-4j-config-dir=./config -Dlogback.configurationFile=./logback.xml -jar ~/networknt/light-bot/bot-cli/build/libs/bot-cli-fat-1.0.jar -t sycn-gitrepo
```


### Environment Setup

In the local environment, we need to create a key and upload the key to both GitHub and internal Git server.

For all the repositories on the GitHub that we want to backup, we need to create an empty repo on the internal Git server.


### All Commmands

```
bash, -c, git fetch ; git checkout master ; git pull origin master
bash, -c, if git show-ref --verify --quiet refs/heads/sync; then git checkout sync; else git checkout -b sync; fi; git merge master;

bash, -c, if ! git remote get-url internal &>/dev/null; then git remote add internal git@198.55.49.186:networknt/light-monorepo-4j.git; fi; git checkout sync; git pull internal sync; git push internal sync;

bash, -c, if ! git remote get-url internal &>/dev/null; then git remote add internal git@198.55.49.186:networknt/light-monorepo-4j.git; fi; git checkout master; git pull internal master; git push internal master;

bash, -c, git fetch ; git checkout sync ; git pull internal sync

bash, -c, if ! git remote get-url origin &>/dev/null; then git remote add origin git@github.com:networknt/light-monorepo-4j.git; fi; git checkout sync; git pull origin sync; git push origin sync;
```
