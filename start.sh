#!/bin/bash -x
ssh-keygen -f ansible-key -N ""

echo "[docker-ssh]" > configs/hosts

docker-compose up -d

NODE1_PORT=`docker port ansible-node1 | grep 22 | sed 's/.*://g'`

echo "ansible node1 on port $NODE1_PORT"

ssh-copy-id -f  -i ansible-key root@localhost -p $NODE1_PORT

NODE1_IPADDRESS=`docker inspect ansible-node1 | jq  -r ".[0].NetworkSettings.Networks.ansible_docker_default.IPAddress"`
echo "$NODE1_IPADDRESS" >> configs/hosts

