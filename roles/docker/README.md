# Role `docker`

This role installs Docker. Please note that Kubernetes is only tested against some versions of Docker.

See also the big [picture](../../docs/roles.md).

## Configuration

By default, the latest stable version of Docker is installed.

```ansible
docker:
  version: "*"
  apt:
    repo_url: https://apt.dockerproject.org/repo
    key_server: hkp://p80.pool.sks-keyservers.net:80
    key_id: 58118E89F3A912897C070ADBF76221572C52609D
```

Kubernetes requires `docker.version` to be set to a supported version of Docker!

## Usage

The following play installs Docker 18.06.

```ansible
- name: Prepare all nodes
  hosts: k8s
  roles:
    - role: docker
      docker:
        version: 18.06.*
```
