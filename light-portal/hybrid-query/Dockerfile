
FROM openjdk:8-jre-alpine
EXPOSE  8442
ADD /service/hybrid-query-1.5.11.jar server.jar
CMD ["/bin/sh","-c","java -Dlight-4j-config-dir=/config -Dlogback.configurationFile=/config/logback.xml -cp /server.jar:/service/* com.networknt.server.Server"]
