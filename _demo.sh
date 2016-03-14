#!/bin/bash

wget https://releases.hashicorp.com/consul-template/0.14.0/consul-template_0.14.0_linux_amd64.zip
unzip consul-template_0.14.0_linux_amd64.zip

docker build -f Dockerfile.app -t hands-on-app .
docker build -f Dockerfile.haproxy -t hands-on-haproxy .

rm consul-template_0.14.0_linux_amd64.zip
rm consul-template

docker-compose -f docker-compose.yml.v1 up -d
