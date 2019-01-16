# Role `k8s-cluster-init`

This role bootstraps the first controller and created a new Kubernetes cluster. It requires that the role [k8s-node-prepare](../k8s-node-prepare) was applied.

See also the big [picture](../../docs/roles.md).

## Configuration

The role relies on a load balancer which points to one or more controllers in the Kubernetes cluster. When this role is applied, `k8s.load_balancer` should only resolve to the first node.

```ansible
cri:
  ctl_version: 1.11.1

k8s:
  pod_network: null
  load_balancer: null
```

## Usage

The following play, creates the cluster on the first controller and defines all required parameters (`k8s.load_balancer` as well as `k8s.pod_network`).

```ansible
- name: Initialize cluster
  hosts: first_controller
  roles:
    - role: k8s-cluster-init
      k8s:
        load_balancer: k8s.example.com
        pod_network: 10.10.0.0/16
```
