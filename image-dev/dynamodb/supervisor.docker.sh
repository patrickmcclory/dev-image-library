#!/bin/bash
cat > /tmp/dynamodb.supervisor.conf <<EOL
[supervisord]
nodaemon=true

[program:dynamodb]
command=java -Djava.library.path=/opt/dynamodb/ -jar /opt/dynamodb/DynamoDBLocal.jar -sharedDb -cors * -inMemory
EOL

sudo mkdir -p /etc/supervisor/
sudo mv /tmp/dynamodb.supervisor.conf /etc/supervisor/supervisord.conf
sudo chown root:root /etc/supervisor/supervisord.conf
