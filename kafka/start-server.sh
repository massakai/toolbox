#!/bin/zsh

nohup bin/zookeeper-server-start.sh config/zookeeper.properties > /dev/null 2>&1 < /dev/null &

for properties in `find . -name "server-*.properties"`
do
  nohup bin/kafka-server-start.sh $properties > /dev/null 2>&1 < /dev/null &
done
