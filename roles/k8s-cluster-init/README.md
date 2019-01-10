# Role `k8s-cluster-init`

XXX

See also the big [picture](../../docs/roles.md).

## Configuration

XXX

```ansible
cri:
  ctl_version: 1.11.1

k8s:
  pod_network: null
  load_balancer: null
```

## Usage

XXX

```ansible
- name: Initialize cluster
  hosts: first_controller
  roles:
    - role: k8s-cluster-init
      k8s:
        load_balancer: k8s.example.com
        pod_network: 10.10.0.0/16
```
