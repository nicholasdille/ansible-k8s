# Role `cni`

Installs the Container Network Interface (CNI) binaries. This includes the plugins.

See also the big [picture](../../docs/roles.md).

## Configuration

The configuration includes options to configure the CNI plugins.

```ansible
cni:
  version: 0.6.0
  plugins_version: 0.7.4

  # supported values: bridge, host-device
  config: []

  bridge_network: null
```

If `cni.config` contains `bridge`, `bridge_network` must be set.

## Usage

The following play installs the CNI binaries including plugins and installs a configuration for the bridge plugin.

```ansible
- name: Prepare all nodes
  hosts: k8s
  roles:
    - role: cni
      cni:
        config: [bridge]
        bridge_network: 10.10.0.0/16
```
