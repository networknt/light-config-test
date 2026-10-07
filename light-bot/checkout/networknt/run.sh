#!/bin/bash

java -Dlight-4j-config-dir=./config -Dlogback.configurationFile=./logback.xml -jar ~/networknt/light-bot/bot-cli/target/bot-cli.jar -t develop-build
