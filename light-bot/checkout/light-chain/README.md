### The purpose of this config

The config files in this folder is just check out all the repositories in vary github organizations to
a local working directory which is normally called light-chain. This is used by developers who are working on taiji-blockchain and need the synch all changes to their local working directory on a daily basis.

We recommend run this task everyday in the morning to ensure your local repositories are up to date.

### Prepare the environment

This is a one time work and all other tasks in light-config-test won't need to do it again. If this is your first time to use light-bot, then you need to checkout both light-bot and light-config-test repository to a workspace.

I am using networknt under my user home directory as workspace and all scripts are based on that assumtpion. If you want use another folder as your workspace, please fork the light-config-test repo and update the scripts accordingly.

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
./run.sh
```
