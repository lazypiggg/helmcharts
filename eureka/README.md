# Eureka

[Eureka](https://github.com/Netflix/eureka) Eureka is a REST (Representational State Transfer) based service that is primarily used in the AWS cloud for locating services for the purpose of load balancing and failover of middle-tier servers..

## Installing the Chart

To install the chart with the release name `my-release`:

```bash
$ helm install --name my-release stable/eureka
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
| `registryAddress`           | `eureka` image registry address.  | `index.alauda.cn`     |
| `imagePullPolicy`           | Image pull policy                        | `IfNotPresent`                           |

Request cpu size            | `100m`                                   |
| `resources.requests.cpu`    | Request cpu size.            | `100m`                                   |
| `resources.requests.memory` | Request memory size.          | `1G`                                     |
| `resources.limits.cpu`      | Cpu limit siz.               | `100m`                                   |
| `resources.limits.memory`   | Memory limit size.         | `1G`                                     |
| `port`                      | Container port.                          | `8761`                                   |
| `springApplicationName`             | Spring application name, which is refrenced in config YAML of git repo | `eureka`   |
| `javaOptions`               | Command-line options, The launcher has a set of standard options that are supported in the current runtime environment. | `nil`                                    |
| `loadbalancerName`          | Alauda loadbalance name                  | `nil`                                    |
| `loadbalancerPort`          | # Alauda loadbalance port                | `nil`                                    |

