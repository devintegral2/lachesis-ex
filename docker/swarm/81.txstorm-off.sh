#!/usr/bin/env bash
cd $(dirname $0)
. ./_params.sh


for NAME in $(docker $SWARM service ls --filter "name=txgen" --format "{{.Name}}")
do

  docker $SWARM service rm \
    ${NAME}

done