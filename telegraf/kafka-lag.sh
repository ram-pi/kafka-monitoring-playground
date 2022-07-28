#!/bin/bash
group=$1
kafkaHost=$2
kafkaPort=$3
kafka-consumer-groups.sh --bootstrap-server ${kafkaHost}:${kafkaPort} --group ${group} --describe 2> /dev/null \
      | tail -n +3 \
      | awk -v GROUP=${group} '{print "kafka_group_lag,group="GROUP",topic="$2",partition="$3",host="$8" current_offset="$4"i,log_end_offset="$5"i,lag="$6"i"}'
