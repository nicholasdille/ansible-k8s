# Role `runc`

This role installs runc which is required for role [containerd](../containerd). For which it is also a dependency.

See also the big [picture](../../docs/roles.md).

## Configuration

It is not necessary to configure any values for normal operation.

```ansible
runc:
  version: 1.0.0-rc6
```

## Usage

The following play installs runc:

```ansible
- name: Install runc
  hosts: k8s
  roles:
    - role: runc
```
