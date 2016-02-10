#!/bin/zsh

if [ ! -n "$1" ]; then
cat <<EOF 1>&2
Usage:
    $ $0 BROKER_ID

EOF
exit 1
fi

# variables
KAFKA=kafka_2.10-0.8.2.2
BROKER_ID=$1
PROPERTIES=config/server-$BROKER_ID.properties
PORT=`expr 9092 + $BROKER_ID`
LOG_DIR=/tmp/$KAFKA/logs-$BROKER_ID
ZOOKEEPER=localhost:2181/$KAFKA

# commands
cp config/server.properties $PROPERTIES
sed -i '' "s|broker.id=0|broker.id=$BROKER_ID|" $PROPERTIES
sed -i '' "s|9092|$PORT|" $PROPERTIES
sed -i '' "s|/tmp/kafka-logs|$LOG_DIR|" $PROPERTIES
sed -i '' "s|localhost:2181|$ZOOKEEPER|" $PROPERTIES
