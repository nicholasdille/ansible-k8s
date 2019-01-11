# Role `cni`

XXX

See also the big [picture](../../docs/roles.md).

## Configuration

XXX

```ansible
cni:
  version: 0.6.0
  plugins_version: 0.7.4

  # supported values: bridge, host-device
  config: []

  bridge_network: null
```

XXX `bridge_network` must be set

## Usage

XXX

```ansible
- name: Prepare all nodes
  hosts: k8s
  roles:
    - role: cni
      cni:
        config: [bridge]
        bridge_network: 10.10.0.0/16
```
