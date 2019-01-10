# Documentation

This repository contains a framework for bootstrapping bare-metal Kubernetes clusters using Ansible. The process is based on the [official documentation using `kubeadm`](https://kubernetes.io/docs/setup/independent/high-availability/#stacked-control-plane-and-etcd-nodes).

This framework supports multiple use cases:

1. Utilize the Ansible [roles](roles.md) to bootstrap your Kubernetes cluster using one of the tested [runtimes](runtimes.md). You are responsible of providing the necessary resources and populating the inventory for Ansible to operate on.

1. Rely on the [provisioning](provisioners.md) included in this framework to create virtual machines and build the inventory. You will most likely want to look at the included [playbooks](playbooks.md).
