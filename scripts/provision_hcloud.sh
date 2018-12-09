#!/bin/bash
set -e

LOCATION=fsn1
IMAGE=ubuntu-18.04
TYPE=cx21
SSH_KEY=209622

for NAME in master1 master2; do
    hcloud server create --name ${NAME} --ssh-key ${SSH_KEY} --type ${TYPE} --location ${LOCATION} --image ${IMAGE}
done

#hcloud server list -o columns=name,ipv4 | tail -n +2 | for read LINE; do
#    echo ${LINE} | awk '{ print $1; }'
#done
