# Role `k8s-controller-join`

This role joins one or more controllers to an existing Kubernetes cluster.

See also the big [picture](../../docs/roles.md).

## Configuration

Just like cluster initialization (using role [k8s-cluster-init](../k8s-cluster-init)), joining controllers requires a load balancer (`k8s.load_balancer`) pointing to existing controllers in the cluster. After joining a new node it can and should be added to the load balancer.

```ansible
k8s:
  load_balancer: null
```

This role must be supplied the name of the first controller using the variable `first_controller`. This node is used to create a token required for joining the cluster.

## Usage

The following play joins nodes from the group `additional_controllers` to an existing cluster accessed using the load balancer `k8s.example.com`. In addition the first controller is supplied as `groups['first_controller`][0]`.

```ansible
- name: Deploy additional masters
  hosts: additional_controllers
  serial: 1
  vars:
    first_controller: "{{ groups['first_controller'][0] }}"
  roles:
    - role: k8s-controller-join
      load_balancer: k8s.example.com
```
