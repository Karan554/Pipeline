#!/bin/bash

echo "***************************"
echo "** Building jar ***********"
echo "***************************"

WORKSPACE=/var/jenkins_home/workspace/Pipeline-project

echo $WORKSPACE

docker run --rm -v "$WORKSPACE/java-app":"/app" -w /app maven:3-alpine "$@"
