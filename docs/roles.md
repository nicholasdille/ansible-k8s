# Roles

XXX

```
     /---------------\              /------\
     | [volume-docker](#volume-docker) |              | [runc](#runc) |
     \---------------/              \------/
             |                          |
             v                          v
        /--------\                   /-----\
        | [docker](#docker) |                   | [cni](#cni) |
        \--------/                   \-----/
             |                          |
             |                          v
             |                   /------------\
             |                   | [containerd](#containerd) |
             |                   \------------/
             v                          |
     /------------------\               |
     | [k8s-node-prepare](#k8s-node-prepare) | <-------------/
     \------------------/
              |
              v
     /------------------\             /---------------\
     | [k8s-cluster-init](#k8s-cluster-init) | ----------> | [k8s-cni-weave](#k8s-cni-weave) |
     \------------------/             \---------------/
                                           |
                                           v
   /-----------------------\       /---------------------\
   | [k8s-controller-finish](#k8s-controller-finish) | <---- | [k8s-controller-join](#k8s-controller-join) |
   \-----------------------/       \---------------------/
              |
              v
/------------------------------\     /-----------------\
| [k8s-controller-all-nodeports](#k8s-controller-all-nodeports) | --> | [k8s-worker-join](#k8s-worker-join) |
\------------------------------/     \-----------------/
```

## volume-docker

Prepares an unused block device and mounts it to `/var/lib/docker`. See [here](../roles/volume-docker) for details.

## docker

Installs [Docker CE](https://docker.com). See [here](../roles/docker) for details. See also [runtimes](runtimes.md).

## runc

Installs [runc](https://github.com/opencontainers/runc). See [here](../roles/runc) for details.

## cni

Installs [CNI](https://github.com/containernetworking/cni). See [here](../roles/cni) for details.

## containerd

Installs [containerd](https://github.com/containerd/containerd). See [here](../roles/containerd) for details. See also [runtimes](runtimes.md).

## k8s-node-prepare

Prepares the node for [Kubernetes](https://kubernetes.io). See [here](../roles/k8s-node-prepare) for details.

## k8s-cluster-init

Bootstraps the first node in a cluster. See [here](../roles/k8s-cluster-init) for details.

## k8s-cni-weave

Installs [Weave Net](https://www.weave.works/docs/net/latest/overview/) for pod networking. See [here](../roles/k8s-cni-weave) for details.

## k8s-controller-join

Joins more controllers to the cluster. See [here](../roles/k8s-controller-join) for details.

## k8s-controller-finish

Finishes the configuration as soon as the control plane is up. See [here](../roles/k8s-controller-finish) for details.

## k8s-controller-all-nodeports

Configures controllers to allow all node ports. See [here](../roles/k8s-controller-all-nodeports) for details.

## k8s-controller-untaint

Optionally untaints controllers to schedule pods. See [here](../roles/k8s-controller-untaint) for details.

## k8s-worker-join

Joins workers to the cluster. See [here](../roles/k8s-worker-join) for details.
