# Role `k8s-cri-containerd`

This role prepares a node for using containerd instead of Docker.

See also the big [picture](../../docs/roles.md).

## Configuration

This role does not require any configuration.

## Usage

This role is not used directly but is a dependency for [k8s-cluster-init](../k8s-cluster-init), [k8s-controller-join](../k8s-controller-join) and [k8s-worker-join](../k8s-worker-join).
