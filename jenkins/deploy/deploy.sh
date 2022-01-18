#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/rsa /tmp/.auth centos@192.168.1.11:/tmp/.auth
scp -i /opt/rsa ./jenkins/deploy/publish centos@192.168.1.11:/tmp/publish
ssh -i /opt/rsa centos@192.168.1.11 "/tmp/publish"
