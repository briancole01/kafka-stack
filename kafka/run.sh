#!/bin/sh
if [ !"$BROKER_ID" ] ; then
  export BROKER_ID=1
fi
if [ !"$ZOOKEEPER_SERVERS" ] ; then
  export ZOOKEEPER_SERVERS=zookeeper:2181
fi
exec /opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties \
  --override zookeeper.connect=${ZOOKEEPER_SERVERS} \
  --override broker.id=${BROKER_ID}  