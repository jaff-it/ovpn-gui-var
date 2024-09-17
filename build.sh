#!/bin/bash

sudo docker-compose -f docker-compose-w-mysql.yml build --no-cache

aws ecr get-login-password --region us-west-2 | sudo docker login --username AWS --password-stdin 956449821269.dkr.ecr.us-west-2.amazonaws.com

sudo docker push 956449821269.dkr.ecr.us-west-2.amazonaws.com/openvpn-server:latest
sudo docker push 956449821269.dkr.ecr.us-west-2.amazonaws.com/openvpn-webui:latest
sudo docker push 956449821269.dkr.ecr.us-west-2.amazonaws.com/openvpn-mysql:latest
