#!/bin/bash

#. $(dirname $0)/env.sh
cd $(dirname $0)
WORKDIR=${PWD}
cd ${WORKDIR}/config/oauth2-client
oc delete secrets oauth2-client-config-secret
oc secret new oauth2-client-config-secret *.yml *.xml *.keystore *.truststore *.json *.crt *.cer *.jks
cd ${WORKDIR}/config/oauth2-code
oc delete secrets oauth2-code-config-secret
oc secret new oauth2-code-config-secret *.yml *.xml *.keystore *.truststore *.json *.crt *.cer *.jks
cd ${WORKDIR}/config/oauth2-key
oc delete secrets oauth2-key-config-secret
oc secret new oauth2-key-config-secret *.yml *.xml *.keystore *.truststore *.json *.crt *.cer *.jks
cd ${WORKDIR}/config/oauth2-service
oc delete secrets oauth2-service-config-secret
oc secret new oauth2-service-config-secret *.yml *.xml *.keystore *.truststore *.json *.crt *.cer *.jks
cd ${WORKDIR}/config/oauth2-token
oc delete secrets oauth2-token-config-secret
oc secret new oauth2-token-config-secret *.yml *.xml *.keystore *.truststore *.json *.crt *.cer *.jks
cd ${WORKDIR}/config/oauth2-user
oc delete secrets oauth2-user-config-secret
oc secret new oauth2-user-config-secret *.yml *.xml *.keystore *.truststore *.json *.crt *.cer *.jks
cd ${WORKDIR}/config/oauth2-refresh-token
oc delete secrets oauth2-refresh-token-config-secret
oc secret new oauth2-refresh-token-config-secret *.yml *.xml *.keystore *.truststore *.json *.crt *.cer *.jks
