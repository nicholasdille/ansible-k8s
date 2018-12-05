# Introduction

Installs Docker engine, compose and machine

# Prerequisites

- Ansible >= 2.1 due to `yum_repository`

# Dependencies

Ansible modules `uri` does not require `python-httplib2` beginning with Ansible 2.1

# Variables

Make sure the follow variables are present

```
docker:
  engine:
    listen_ip: "0.0.0.0"
    port: 2375
    port_secure: 2376
  compose:
    version: "1.8.0"
    path: "/usr/local/bin"
  machine:
    version: "0.8.0"
    path: "/usr/local/bin"
```

You can also leave out `docker.compose.version` and `docker.machine.version` and the role will reach out to GitHub and determine the latest version automatically.

# Usage

The following example shows how to write a playbook using the docker role:

```yaml
- name: Example playbook for docker role
  hosts: all
  roles:
  - { role: docker, components: [engine, compose, machine] }
```

# TODO

- Certificates
