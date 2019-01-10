# Provisioners

The provisioning process is split into two phases:

1. Prepare the inventory

1. Deploy virtual machines

## Configuration

XXX inventory

```ansible
provisioning:
  controller:
    count: 3
    prefix: controller
  worker:
    count: 2
    prefix: worker
```

Additional configuration options are available for the supported provisioners.

To select a supported provisioner, you must provide an additional parameter when calling `ansible-playbook`:

```bash
ansible-playbook -e provisioner=hcloud k8s-docker.yml
```

## Supported provisioners

### Hetzner Cloud

XXX

```ansible
hcloud:
  token: XXX
  use_volumes: false
```

- `hcloud.token`: XXX
- `hcloud.use_volumes`: XXX (reference volume-docker)

The default settings are located in [`vars/hcloud/vars.yml`](../vars/hcloud/vars.yml) with sensitive data stored in Ansible vault [`vars/hcloud/vault.yml`](../vars/hcloud/vault.yml).

### VMware vSphere

XXX

```ansible
vsphere:
  hostname: vcenter.example.com
  username: myadmin
  password: mysecretpassword
  datacenter: mydc
  cluster: mycluster
  folder: folder/sub
  resource_pool: mypool
  template: mytemplate
  network: mynetwork
  domain: example.com
```

- `vsphere.hostname`: XXX
- `vsphere.username`: XXX
- `vsphere.password`: XXX
- `vsphere.datacenter`: XXX
- `vsphere.cluster`: XXX
- `vsphere.folder`: XXX
- `vsphere.resource_pool`: XXX
- `vsphere.template`: XXX
- `vsphere.network`: XXX
- `vsphere.domain`: XXX

The default settings are located in [`vars/vsphere/vars.yml`](../vars/vsphere/vars.yml) with sensitive data stored in Ansible vault [`vars/vsphere/vault.yml`](../vars/vsphere/vault.yml).
