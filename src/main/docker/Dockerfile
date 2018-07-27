FROM anapsix/alpine-java
VOLUME /tmp
RUN apk add --update curl && rm -rf /var/cache/apk/*
ADD AWS-Docker-POC.war app.war
RUN bash -c 'touch /app.war'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.war"]
#ENTRYPOINT ["java","-Xdebug ", "-Xrunjdwp:server=y,transport=dt_socket,address=9242,suspend=n","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]