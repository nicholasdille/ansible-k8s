# Role `k8s-controller-finish`

This role changes the list of etcd hosts from the load balancer to individual nodes so that `kubectl get componentstatus` shows all etcd nodes. It must be executed on all controllers.

See also the big [picture](../../docs/roles.md).

## Configuration

This role does not require any configuration.

## Usage

XXX

```ansible
- name: Configure control planes
  hosts: controller
  roles:
    - role: k8s-controller-finish
```
