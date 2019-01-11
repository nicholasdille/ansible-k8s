# Role `k8s-controller-all-nodeports`

This role modifies the configuration to allow publishing node ports on all ports. This role must be executed on all controllers.

See also the big [picture](../../docs/roles.md).

## Configuration

This role does not require any configuration.

## Usage

XXX

```ansible
- name: Configure control planes
  hosts: controller
  roles:
    - role: k8s-controller-all-nodeports
```
