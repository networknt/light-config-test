### The purpose of this config

The config files in this folder are pointing to the local event-store and tram cdc service with docker-compose.

Please follow the build steps by:

 [--Build Service](https://github.com/networknt/light-config-test/tree/develop/light-example-4j/tram/todo-list/local)

Now you should have light-bot built already.

### To start the command line

Run the following commands at the same location as this README.md

```
cd ~/networknt/light-config-test/light-example-4j/tram/todo-list/local/command
```

To start rest command side service:

```
java -Dlight-4j-config-dir=./config -Dlogback.configurationFile=./logback.xml -jar ~/networknt/light-example-4j/tram/light-tram-todolist/multi-module/tram-todo-command/target/tram-todo-command-service-1.0.0.jar
```
