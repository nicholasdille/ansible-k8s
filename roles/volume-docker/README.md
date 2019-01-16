# Role `docker-volume`

This role uses an unformatted block device to mount a volume at `/var/lib/docker`. It supports `btrfs` as well as `zfs`.

See also the big [picture](../../docs/roles.md).

## Configuration

Please select `btrfs` or `zfs` for the variable `docker.volume_fs`.

```ansible
docker:
  volume_fs: btrfs
```

## Usage

The following play sets up an unused block device for docker:

```ansible
- name: Prepare all nodes
  hosts: k8s
  roles:
    - role: volume-docker
      docker:
        volume_fs: xfs
```
