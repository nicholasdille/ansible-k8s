# Role `k8s-node-prepare`

This role takes care of preparing a node for running Kubernetes. It requires [docker](../docker) or [containerd](../containerd) to be installed first.

See also the big [picture](../../docs/roles.md).

## Configuration

Nonre of the following variables need to be modified. If you require a specific version of Kubernetes, you can set `k8s.version` overriding the preset to use the latest version.

```ansible
cri:
  ctl_version: 1.13.0

k8s:
  version: "{{ lookup('url', 'https://dl.k8s.io/release/stable.txt') }}"
  prerequisites:
    - ipvsadm
    - ebtables
    - ethtool
    - ipset
    - conntrack
    - iptables
    - iptstate
    - netstat-nat
    - socat
    - netbase
```

## Usage

The following play prepares nodes for Kubernetes.

```ansible
- name: Prepare all nodes
  hosts: k8s
  roles:
    - role: k8s-node-prepare
```
