# Role `k8s-node-prepare`

This role takes care of preparing a node for running Kubernetes. It requires Docker to be installed first (see role [docker](../docker)).

See also the big [picture](../../docs/roles.md).

## Configuration

XXX

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

XXX

```ansible
- name: Prepare all nodes
  hosts: k8s
  roles:
    - role: k8s-node-prepare
```
