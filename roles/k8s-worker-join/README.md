# Role `k8s-worker-join`

This role joins worker nodes to an existing Kubernetes cluster.

See also the big [picture](../../docs/roles.md).

## Configuration

XXX

```ansible
k8s:
  load_balancer: null
```

## Usage

XXX

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
