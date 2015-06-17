#!/bin/bash
sudo apt-get update -y
sudo apt-get install -y openjdk-7-jre-headless supervisor sysv-rc-conf wget curl
wget http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest.tar.gz -O /tmp/dynamodb.tar.gz
sudo mkdir -p /opt/dynamodb
sudo tar xvf /tmp/dynamodb.tar.gz -C /opt/dynamodb
