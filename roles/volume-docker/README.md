# Role `docker-volume`

XXX

See also the big [picture](../../docs/roles.md).

## Configuration

XXX

```ansible
docker:
  volume_fs: btrfs
```

## Usage

XXX

```ansible
- name: Prepare all nodes
  hosts: k8s
  roles:
    - role: volume-docker
      docker:
        volume_fs: xfs
```
