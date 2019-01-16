# Provisioners

The provisioning process is split into two phases:

1. Prepare the inventory

1. Deploy virtual machines

## Configuration

The inventory will be created dynamically based on your configuration:

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

Provision resources in the [Hetzner Cloud](https://www.hetzner.com/cloud)

```ansible
hcloud:
  image: ubuntu-18.04
  controller_server_type: cx21
  worker_server_type: cx21
  location: nbg1
  ssh_keys
    - 123456
  token: abcdef1234567890
  cli_version: 1.10.0
  use_volumes: false
```

- `hcloud.image`: which image to use
- `hcloud.controller_server_type`: which server type to use for controller
- `hcloud.worker_server_type`: which server type to use for worker
- `hcloud.location`: which location to use
- `hcloud.ssh_keys`: which SSH keys to inject
- `hcloud.cli_version`: which version of the CLI to install and use
- `hcloud.token`: which token to use
- `hcloud.use_volumes`: whether to create volumes (see role [volume-docker](../roles/volume-docker))

The default settings are located in [`vars/hcloud/vars.yml`](../vars/hcloud/vars.yml) with sensitive data stored in Ansible vault [`vars/hcloud/vault.yml`](../vars/hcloud/vault.yml).

### VMware vSphere

Provision resource in your local virtualization infrastructure

```ansible
vsphere:
  hostname: vcenter.example.com
  username: myadmin
  password: mysecretpassword
  datacenter: mydc
  cluster: mycluster
  folder: folder/sub
  resource_pool: mypool
  controller_template: mytemplate
  worker_template: mytemplate
  network: mynetwork
  domain: example.com
```

- `vsphere.hostname`: Hostname of the vCenter server to use
- `vsphere.username`: Username for authenticating against vCenter
- `vsphere.password`: Password for the above user
- `vsphere.datacenter`: Datacenter to use
- `vsphere.cluster`: Cluster to use
- `vsphere.folder`: Folder to save the new VMs in
- `vsphere.resource_pool`: Resource pool to assign new VMs to
- `vsphere.controller_template`: Template to base new controller VMs on
- `vsphere.worker_template`: Template to base new worker VMs on
- `vsphere.network`: Network to attach new VMs to
- `vsphere.domain`: Domain for DNS resolution

The default settings are located in [`vars/vsphere/vars.yml`](../vars/vsphere/vars.yml) with sensitive data stored in Ansible vault [`vars/vsphere/vault.yml`](../vars/vsphere/vault.yml).
