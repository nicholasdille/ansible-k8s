# Bootstrapping of bare-metal Kubernetes clusters

... using `kubeadm` and Ansible according to [stacked control planes with `kubeadm`](https://kubernetes.io/docs/setup/independent/high-availability/#stacked-control-plane-and-etcd-nodes)

See [documentation](docs)

## Tested components

- Ansible 2.7.4
- Ubuntu 16.04, 18.04
- [Docker](https://docs.docker.com/engine/release-notes/) 18.06
- [runc](https://github.com/opencontainers/runc/releases/latest) 1.0.0-rc6
- [CNI](https://github.com/containernetworking/cni/releases/latest) 0.6.0
- [CNI plugins](https://github.com/containernetworking/plugins/releases/latest) 0.7.4
- [containerd](https://github.com/containerd/containerd/releases/latest) 1.2.2
- [Kubernetes](https://kubernetes.io/docs/setup/release/notes/) 1.13.0

## Quickstart

1. Make sure the follow applies to you:
    - You are planning to use one of the [supported provisioners](docs/provisioners.md)

1. Configure the provisioner, e.g. hcloud
    - Edit `vars/hcloud/vars.yml`
    - Update credentials: `ansible-vault create vars/hcloud/vault.yml`

1. Configure the deployment
    - Edit `vars/global.yml`

1. Run a playbook for a [supported runtime](docs/runtimes.md) with a [supported provisioner](docs/provisioners.md):
    - `ansible-playbook -e provisioner=hcloud k8s-docker.yml`
