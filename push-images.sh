#!/bin/bash

namespace="$1"

for i in java zookeeper kafka kafka-manager; do
    echo Pushing to docker.io $i
    ( cd $i && docker build -t $namespace/$i . )
    docker push $namespace/$i
done
