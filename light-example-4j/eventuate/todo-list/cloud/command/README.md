### The purpose of this config

The config files in this folder are for [eventuate todo-list example](https://github.com/networknt/light-example-4j/tree/master/eventuate/todo-list) 
and there is a [tutorial](https://www.networknt.com/tutorial/eventuate/todo-list/) 
with detailed steps. 

Services built on top of light-eventuate-4j need infrastructure services to
run. You can install Kafak, Zookeeper, Mysql and CDC server on your local 
with docker-compose which is documented in [getting started](https://www.networknt.com/tutorial/eventuate/getting-started/)
or you can use our cloud services which is very convenient for individual
developers or for developers who cannot use docker-compose. The config 
files in this folder are pointing to the cloud services. 

### Prepare the environment

There are several repositories need to be cloned to your local and built. 

I am using networknt under my user home directory as workspace and all scripts 
are based on that assumtpion. If you want use another folder as your workspace, 
please fork the light-config-test repo and update the scripts accordingly. 

```
cd ~
mkdir networknt
git clone https://github.com/networknt/light-example-4j.git
git clone https://github.com/networknt/light-config-test.git
cd ~/networknt/light-example-4j/eventuate/todo-list
mvn clean install
```

Now you should have light-bot built already. 

### To start the command line

Run the following commands at the same location as this README.md

To start rest command side service:

```
java -Dlight-4j-config-dir=./config -Dlogback.configurationFile=./logback.xml -jar ~/networknt/light-example-4j/eventuate/todo-list/rest-command/target/rest-command-1.0.0.jar
```

