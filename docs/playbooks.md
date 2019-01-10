# Playbooks

This repository comes with several playbooks to demonstrate the functionality.

Please note that the [official documentation for bootstrapping clusters using `kubeadm`](https://kubernetes.io/docs/setup/independent/high-availability/#stacked-control-plane-and-etcd-nodes) expects a load balancer to access the control plane nodes. In the included playbooks, [CloudFlare]() DNS is used to distribute API calls to all controllers. The configuration is stored in [`vars/cloudflare/vars.yml`](vars/cloudflare/vars.yml) and [`vars/cloudflare/vault.yml`](../vars/cloudflare/vault.yml).

## k8s-docker

This playbook deploys the Kubernetes cluster using the default runtime based on Docker ([more about supported runtimes](runtimes.md)).

## k8s-containerd

This playbook deploys the Kubernetes cluster using the containerd runtime ([more about supported runtimes](runtimes.md)).
