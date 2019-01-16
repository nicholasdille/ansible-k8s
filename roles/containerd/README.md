# Role `containerd`

Installs containerd as an alternative to [Docker](../docker). It automatically installs its dependencies [runc](../runc) and [cni](../cni).

See also the big [picture](../../docs/roles.md).

## Configuration

The role does not require any additional configuration.

```ansible
containerd:
  version: 1.2.2
```

## Usage

The following play installs containerd.

```ansible
- name: Prepare all nodes
  hosts: k8s
  roles:
    - role: containerd
```
