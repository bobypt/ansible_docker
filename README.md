# ansible_docker

## Start
```
./start.sh
```

```pass``` when prompted for password.

```
docker inspect ansible-node1 | jq  -r ".[0].NetworkSettings.Networks.ansible_docker_default.IPAddress"

docker exec  ansible-master ansible  -m ping all

docker exec  ansible-master ansible-playbook -vvv  /tmp/playbooks/playbook1.yml
```
## Stop when donw

```
./stop.sh
```