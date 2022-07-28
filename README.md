# kafka-monitoring-playground
## Run
`docker-compose up -d`

## Produce data
```
topicctl --broker-addr localhost:19092 tester --topic test
```

## Consume data
```
kafka-console-consumer --bootstrap-server localhost:19092 --topic test --group cli
```

## Elastic/Kibana
[http://localhost:5601](http://localhost:5601)

## Telegraf/Chronograf
[http://localhost:8888](http://localhost:8888)

## Prometheus/Grafana
TODO

## Agent 
To collecting data through Jolokia you need to configure the javaanget:
```
# JOLOKIA
  KAFKA_OPTS: -javaagent:/jolokia/jolokia-jvm-1.7.1.jar=host=0.0.0.0,port=8778
```
