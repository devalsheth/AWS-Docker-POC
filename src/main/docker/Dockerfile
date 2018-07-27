FROM anapsix/alpine-java
VOLUME /tmp
RUN apk add --update curl && rm -rf /var/cache/apk/*
ADD AWS-Docker-POC.war app.war
ADD entrypoint.sh entry.sh
RUN bash -c 'touch /app.war /entry.sh'
ENTRYPOINT ["sh", "entry.sh"]
#ENTRYPOINT ["java","-Xdebug ", "-Xrunjdwp:server=y,transport=dt_socket,address=9242,suspend=n","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]