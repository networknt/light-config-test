
FROM openjdk:8-jre-alpine
EXPOSE  8443
ADD /service/hybrid-command-1.5.11.jar server.jar
CMD ["/bin/sh","-c","java -Dlight-4j-config-dir=/config -Dlogback.configurationFile=/config/logback.xml -cp /server.jar:/service/* com.networknt.server.Server"]
