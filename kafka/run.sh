#!/bin/sh
exec /opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties \
  --override zookeeper.connect=${ZOOKEEPER_SERVERS} \
  --override broker.id=${BROKER_ID}   