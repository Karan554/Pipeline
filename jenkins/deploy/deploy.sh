#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

chmod 600 rsa

scp -i /opt/rsa /tmp/.auth centos@1192.168.29.34:/tmp/.auth
scp -i /opt/rsa ./jenkins/deploy/publish centos@192.168.29.34:/tmp/publish
ssh -i /opt/rsa centos@1192.168.29.34 "/tmp/publish"
