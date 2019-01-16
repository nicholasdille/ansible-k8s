# Role `k8s-worker-join`

This role joins worker nodes to an existing Kubernetes cluster.

See also the big [picture](../../docs/roles.md).

## Configuration

Just like cluster initialization (role [k8s-cluster-init](../k8s-cluster-init)) and joining controllers (role [k8s-controller-join](../k8s-controller-join)), joining worker nodes requires API access to an controller in the cluster. You need to set `k8s.load_balancer`.

```ansible
k8s:
  load_balancer: null
```

## Usage

The following play joins workers (group `worker`) to an existing cluster at `k8s.example.com` using a specific controller (variable `controller`) for token creation.

```ansible
- name: Deploy workers
  hosts: worker
  vars:
    controller: "{{ groups['first_controller'][0] }}"
  roles:
    - role: k8s-worker-join
      k8s:
        load_balancer: k8s.example.com
```
