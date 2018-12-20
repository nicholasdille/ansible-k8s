# Bootstrapping of Kubernetes using `kubeadm` and Ansible

According to [stacked control planes with `kubeadm`](https://kubernetes.io/docs/setup/independent/high-availability/#stacked-control-plane-and-etcd-nodes)

## Tested components

- Ansible 2.5.1
- Ubuntu 16.04, 18.04
- Docker 18.06
- runc 1.0.0-rc6
- CNI 0.6.0
- CNI plugins 0.7.4
- containerd 1.2.1
- Kubernetes 1.13.0, 1.13.1

## Usage

The follow inventory groups are required:

- initial master
- additional masters
- workers

The deployment is performed in the following phases:

1. Prepare all nodes
    Run on initial master, additional masters and workers

    a. Install runtime (see below)
    b. Role `k8-node-prepare`
    c. (Optional) Prepare runtime (see below)

2. Initialize cluster
    Run on initial master

    a. Role `k8s-cluster-init`
    b. Role `k8s-cni-weave`

3. Deploy additional masters
    Run on additional masters

    a. Role `k8s-controller-join`

4. Configure control plane
    Run on initial master and additional masters

    a. Role `k8s-controller-finish`
    b. Role `k8s-controller-all-nodeports`

5. Deploy workers
    Run on workers

    a. Role `k8s-worker-join`

## Runtime

Supported runtimes:

- Docker
- containerd

### Docker

Run role `docker`

Set variable `docker.version` to `18.06.*`

### containerd

Run roles `runc`, `cni`, `containerd`

Prepare run time by running `k8s-cri-containerd`