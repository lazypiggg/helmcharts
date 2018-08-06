# Zipkin

[Zipkin](https://github.com/openzipkin/zipkin) Zipkin is a distributed tracing system. It helps gather timing data needed to troubleshoot latency problems in microservice architectures. It manages both the collection and lookup of this data. Zipkin’s design is based on the Google Dapper paper.

## Installing the Chart

To install the chart with the release name `my-release`:

```bash
$ helm install --name my-release stable/zipkin
```

## Uninstalling the Chart

To uninstall/delete the `my-release` deployment:

```bash
$ helm delete my-release
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Configuration

The following tables lists the configurable parameters of the MySQL chart and their default values.

| Parameter                   | Description                              | Default                                  |
| --------------------------- | ---------------------------------------- | ---------------------------------------- |
| `registryAddress`           | `zipkin` image registry address.  | `index.alauda.cn`     |
| `imagePullPolicy`           | Required, Image pull policy                        | `IfNotPresent`                           |
| `resources.requests.cpu`    | Request cpu size            | `500m`                                   |
| `resources.requests.memory` | Request memory size          | `4G`                                     |
| `resources.limits.cpu`      | Cpu limit size              | `500m`                                   |
| `resources.limits.memory`   | Memory limit size.         | `4G`                                     |
| `configserverEndpoint`      | Required, Spring Zipkin endpoint. | `nil` |
| `kafkaEndpoint`             | Required, Kafka endpoint. The default value is just a sample | `kafka-headless.sample-namespace:9092`   |
| `zookeeperEndpoint`         | Required, Zookeeper endpoint. The default value is just a sample | `v0.0.1`                                 |
| `javaOptions`               | Command-line options, The launcher has a set of standard options that are supported in the current runtime environment. | `nil`                                    |
| `loadbalancerName`          | Optional, Alauda loadbalance name                  | `nil`                                    |
| `loadbalancerPort`          | Optional, Alauda loadbalance port                | `nil`                                    |
| `springApplicationName`     | Required, Spring application name, which is refrenced in config YAML of git repo | `eureka`   |