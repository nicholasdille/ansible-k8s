# Runtimes

Kubernetes supports multiple runtimes through the [Container Runtime Interface (CRI)](https://github.com/kubernetes/community/blob/master/contributors/devel/container-runtime-interface.md).

## Docker

The default runtime for Kubernetes is Docker. This scenario is very simple to implement because only Docker needs to be installed before the cluster is bootstrapped:

```ansible
- name: Install docker
  hosts: k8s
  roles:
    - role: docker
```

See [here](../roles/docker) for a detailed documentation.

## containerd

This repository supports `containerd` as an alternative runtime. This scenario involves more preparation for Kubernetes to be bootstrapped:

```ansible
- name: Install containerd
  hosts: k8s
  roles:
    - role: runc
    - role: cni
    - role: containerd
```

See also the role documentation for [runc](../roles/runc), [cni](../roles/cni) and [containerd](../roles/containerd).
