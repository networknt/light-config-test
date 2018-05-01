cd config
kubectl create secret generic petstore-secret --from-file=*.yml --from-file=*.keystore --from-file=*.truststore --from-file=*.json --from-file=*.crt
