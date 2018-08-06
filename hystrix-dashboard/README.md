# Hystrix-dashboard

[Hystrix-dashboard](https://github.com/Netflix/Hystrix) Hystrix is a latency and fault tolerance library designed to isolate points of access to remote systems, services and 3rd party libraries, stop cascading failure and enable resilience in complex distributed systems where failure is inevitable.

## Installing the Chart

To install the chart with the release name `my-release`:

```bash
$ helm install --name my-release stable/hystrix-dashboard
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
| `registryAddress`           | `hystrix-dashboard` image registry address.  | `index.alauda.cn`     |
| `imagePullPolicy`           | Required, Image pull policy                        | `IfNotPresent`                           |
| `resources.requests.cpu`    | Request cpu size            | `100m`                                   |
| `resources.requests.memory` | Request memory size          | `1G`                                     |
| `resources.limits.cpu`      | Cpu limit size              | `100m`                                   |
| `resources.limits.memory`   | Memory limit size.         | `1G`                                     |
| `configserverEndpoint`      | Required, Spring Hystrix-dashboard endpoint. | `nil` |
| `port`                      | Required, Container port. The default value is just a sample| `80`      |
| `kafkaEndpoint`             | Required, Kafka endpoint. The default value is just a sample | `kafka-headless.sample-namespace:9092`   |
| `zookeeperEndpoint`         | Required, Zookeeper endpoint. The default value is just a sample | `v0.0.1`                                 |
| `javaOptions`               | Command-line options, The launcher has a set of standard options that are supported in the current runtime environment. | `nil`                                    |
| `loadbalancerName`          | Optional, Alauda loadbalance name                  | `nil`                                    |
| `loadbalancerPort`          | Optional, Alauda loadbalance port                | `nil`                                    |
| `springApplicationName`     | Required, Spring application name, which is refrenced in config YAML of git repo | `eureka`   |