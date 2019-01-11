# Role `k8s-controller-join`

XXX

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
- name: Deploy additional masters
  hosts: additional_controllers
  serial: 1
  vars:
    first_controller: "{{ groups['first_controller'][0] }}"
  roles:
    - role: k8s-controller-join
      load_balancer: k8s.example.com
```
