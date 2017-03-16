#!/bin/bash

for i in java zookeeper kafka kafka-manager; do
    echo Building $i
    ( cd $i && docker build -t bf16574403/$i .)
done
