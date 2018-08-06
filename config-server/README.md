# Config Server

[Config Server](https://github.com/spring-cloud/spring-cloud-config) Spring Cloud Config provides server-side and client-side support for externalized configuration in a distributed system. With the Config Server, you have a central place to manage external properties for applications across all environments.

## Installing the Chart

To install the chart with the release name `my-release`:

```bash
$ helm install --name my-release stable/config-server
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
| `registryAddress`           | `config-server` image registry address.  | `index.alauda.cn`     |
| `imagePullPolicy`           | Image pull policy                        | `IfNotPresent`                           |
| `resources.requests.cpu`    | Request cpu size                        | `100m`                                   |
| `resources.requests.memory` | Request memory size          | `1G`                                     |
| `resources.limits.cpu`      | Cpu limit size               | `100m`                                   |
| `resources.limits.memory`   | Memory limit size        | `1G`                                     |
| `rule`                      | The raw text of application.yml, which describe config server rule. The default value is just a sample | 'spring: {"cloud":{"config":{"server":{"git":{"uri":"https://github.com/sampleApp/{application}"}}}}}' |
| `port`                      | Container port.                          | `80`                                     |
| `kafkaEndpoint`             | Kafka endpoint. The default value is just a sample | `kafka-headless.sample-namespace:9092`   |
| `zookeeperEndpoint`         | Zookeeper endpoint. The default value is just a sample | `v0.0.1`                                 |
| `javaOptions`               | Command-line options, The launcher has a set of standard options that are supported in the current runtime environment. | `nil`                                    |
| `loadbalancerName`          | Alauda loadbalance name                  | `nil`                                    |
| `loadbalancerPort`          | # Alauda loadbalance port                | `nil`                                    |

