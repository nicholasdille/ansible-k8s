# Role `k8s-controller-untaint`

This role untaints a controller to allow scheduling pod on it. This is useful for single node clusters.

This role is currently not part of the big [picture](../../docs/roles.md).

## Configuration

This role does not require any configuration.

## Usage

XXX

```ansible
- name: Make controller schedulable
  hosts: controller
  roles:
    - role: k8s-controller-untaint
```
