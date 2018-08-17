#!/bin/bash

. $(dirname $0)/env.sh
cd $(dirname $0)
WORKDIR=${PWD}
cd ${WORKDIR}/api_a/config
oc secret new apia-config-secret *.yml *.keystore *.truststore *.json *.crt
cd ${WORKDIR}/api_b/config
oc secret new apib-config-secret *.yml *.keystore *.truststore *.json *.crt
cd ${WORKDIR}/api_c/config
oc secret new apic-config-secret *.yml *.keystore *.truststore *.json *.crt
cd ${WORKDIR}/api_d/config
oc secret new apid-config-secret *.yml *.keystore *.truststore *.json *.crt
