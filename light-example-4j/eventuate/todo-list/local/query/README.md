### The purpose of this config

The config files in this folder are pointing to the local event-store with docker-compose.


Please follow the build steps by:

 [--Build Service](https://github.com/networknt/light-config-test/tree/develop/light-example-4j/eventuate/todo-list/local)


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
