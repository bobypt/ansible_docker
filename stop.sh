#!/bin/bash -x

docker-compose down

rm -rf ansible-key ansible-key.pub
rm -rf configs/hosts
