#!/bin/sh

# This is the Docker entrypoint script that takes Java options from 
# either environment variable or command line arguments.
#
# To pass in Java options to docker directly:
#   docker run docker_image "<java-options>"
# Example:
#   docker run myimage "-Xdebug -Djava.security.egd=file:/dev/./urandom"
#
# To pass in Java options in docker compose, add the following under
# 'environment':
#     - JAVA_OPTS=<java-options>
#  Example:
#     - JAVA_OPTS=-Xdebug -Djava.security.egd=file:/dev/./urandom
#
#

set -e

if [ -n "$JAVA_OPTS" ]; then
    exec nohup java -jar app.war.war >>nohup.out 2>&1 &
else
    if [ -n "$1" ]; then
        exec nohup java -jar app.war.war >>nohup.out 2>&1 &
    else
        exec nohup java -jar app.war.war >>nohup.out 2>&1 &
    fi
fi