# Roles

XXX

```
     /---------------\              /------\
     | volume-docker |              | runc |
     \---------------/              \------/
             |                          |
             v                          v
        /--------\                   /-----\
        | docker |                   | cni |
        \--------/                   \-----/
             |                          |
             |                          v
             |                   /------------\
             |                   | containerd |
             |                   \------------/
             v                          |
     /------------------\               |
     | k8s-node-prepare | <-------------/
     \------------------/
              |
              v
     /------------------\             /---------------\
     | k8s-cluster-init | ----------> | k8s-cni-weave |
     \------------------/             \---------------/
                                           |
                                           v
   /-----------------------\       /---------------------\
   | k8s-controller-finish | <---- | k8s-controller-join |
   \-----------------------/       \---------------------/
              |
              v
/------------------------------\     /-----------------\
| k8s-controller-all-nodeports | --> | k8s-worker-join |
\------------------------------/     \-----------------/
```

## volume-docker

Prepares an unused block device and mounts it to `/var/lib/docker`. See [here](../roles/volume-docker) for details.

## docker

Installs Docker CE.

## runc

XXX

## cni

XXX

## containerd

XXX

## k8s-node-prepare

XXX

## k8s-cluster-init

XXX

## k8s-cni-weave

XXX

## k8s-controller-join

XXX

## k8s-controller-finish

XXX

## k8s-controller-all-nodeports

XXX

## k8s-controller-untaint

XXX

## k8s-worker-join

XXX
