# Redis

[Redis](http://redis.io/) is an advanced key-value cache and store. It is often referred to as a data structure server since keys can contain strings, hashes, lists, sets, sorted sets, bitmaps and hyperloglogs.



## Prerequisites

- Kubernetes 1.9+ with Beta APIs enabled
- PV provisioner support in the underlying infrastructure

## Installing the Chart

To install the chart with the release name `my-release`:

```bash
$ helm install --name my-release redis-cluster
```

The command deploys Redis on the Kubernetes cluster in the default configuration. The [configuration](#configuration) section lists the parameters that can be configured during installation.

> **Tip**: List all releases using `helm list`

## Uninstalling the Chart

To uninstall/delete the `my-release` deployment:

```bash
$ helm delete my-release
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Configuration

The following tables lists the configurable parameters of the Redis chart and their default values.

|           Parameter           |                Description                 |           Default            |
|-------------------------------|--------------------------------------------|------------------------------|
| `registryAddress`             | `redis-cluster` registryAddress.           | index.alauda.cn              |
| `nodeName`                    | host mode node ips                         | [ip1,ip2]                    |
| `cluster-node-timeout`        | the redis cluster node ping pong time      | 15000                        |
| `port`                        | redis client port                          | 6379                         |
| `clusterRequireFullCoverage`  | cluster all slot check flag                | no                           |
| `replicaNum`                  | Redis cluster slave num                    | 1                            |
| `persistence.enable`          | if ture enable pvc,or not                  | true                         |
| `persistence.size`            | Storage  req size                          | `1Gi`                        |
| `persistence.storageClassName`| Storage class name of backing PVC          | `nil`                        |
| `passwd`                      | redis passwd ,if set,use the passwd        | ``                           |
| `resources`                   | CPU/Memory resource requests               | Memory: `1Gi`, CPU: `1`      |
| `imagePullPolicy`             | the image pull policy can be IfNotPresent  Always  Never| IfNotPresent    |




Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`. For example,

```bash
$ helm install --name my-release \
  --set passwd=secretpassword \
    redis-cluster
```

The above command sets the Redis server password to `secretpassword`.

Alternatively, a YAML file that specifies the values for the parameters can be provided while installing the chart. For example,

```bash
$ helm install --name my-release -f values.yaml stable/redis
```

> **Tip**: You can use the default [values.yaml](values.yaml)



### Existing PersistentVolumeClaim

1. Create the PersistentVolume
1. Create the PersistentVolumeClaim
1. Install the chart
```bash
$ helm install --set persistence.existingClaim=PVC_NAME redis
```
