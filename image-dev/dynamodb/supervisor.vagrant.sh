#!/bin/bash
cat > /tmp/dynamodb.supervisor.conf <<EOL
[program:dynamodb]
command=java -Djava.library.path=/opt/dynamodb/ -jar /opt/dynamodb/DynamoDBLocal.jar -sharedDb -cors * -inMemory
process_name=%(program_name)s
numprocs=1
directory=/opt/dynamodb
user=root
stdout_logfile=/var/log/dynamodb.stdout.log
stdout_logfile_maxbytes=1MB
stdout_logfile_backups=10
stdout_capture_maxbytes=1MB
stderr_logfile=/var/log/dynamodb.stderr.log
stderr_logfile_maxbytes=1MB
stderr_logfile_backups=10
stderr_capture_maxbytes=1MB
EOL

sudo mkdir -p /etc/supervisor/conf.d
sudo mv /tmp/dynamodb.supervisor.conf /etc/supervisor/conf.d/dynamodb.supervisor.conf
sudo chown root:root /etc/supervisor/conf.d/dynamodb.supervisor.conf
sudo sysv-rc-conf supervisor on
sudo service supervisor restart
