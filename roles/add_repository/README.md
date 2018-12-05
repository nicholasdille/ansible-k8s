# Introduction

Adds a repository on Debian or RedHat based distributions

# Example

The following code adds a repository:

```
- name: Add repository
  hosts: localhost
  roles:
  - role: add_repository
    name: influxdata
    apt_repo: "deb https://repos.influxdata.com/{{ ansible_distribution|lower }} {{ ansible_distribution_release }} stable"
    yum_repo: "https://repos.influxdata.com/centos/$releasever/$basearch/stable"
    key_url: "https://repos.influxdata.com/influxdb.key"
```
