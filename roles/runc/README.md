# Role `runc`

This role installs runc which is required for role [containerd](../containerd). For which it is also a dependency.

See also the big [picture](../../docs/roles.md).

## Configuration

XXX

```ansible
runc:
  version: 1.0.0-rc6
```

## Usage

XXX

```ansible
- name: Install runc
  hosts: k8s
  roles:
    - role: runc
```
