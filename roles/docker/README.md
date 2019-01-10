# Role `docker`

XXX

See also the big [picture](../../docs/roles.md).

## Configuration

XXX

```ansible
docker:
  version: "*"
  apt:
    repo_url: https://apt.dockerproject.org/repo
    key_server: hkp://p80.pool.sks-keyservers.net:80
    key_id: 58118E89F3A912897C070ADBF76221572C52609D
```

Kubernetes requires `docker.version` to be set!

## Usage

XXX

```ansible
- name: Prepare all nodes
  hosts: k8s
  roles:
    - role: docker
      docker:
        version: 18.06.*
```
