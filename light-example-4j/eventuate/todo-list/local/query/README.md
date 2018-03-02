### The purpose of this config

 The config files in this folder are pointing to the local event-store with docker-compose.

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

```
cd ~/networknt/light-config-test/light-example-4j/eventuate/todo-list/local/query
```

To start rest query side service:

```
java -Dlight-4j-config-dir=./config -Dlogback.configurationFile=./logback.xml -jar ~/networknt/light-example-4j/eventuate/todo-list/rest-query/target/rest-query-1.0.0.jar
```

