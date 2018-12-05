# Introduction

Installs a package on Debian or Redhat based distributions

# Examples

The following code installs the latest version of the package:

```yaml
- name: Add package
  hosts: localhost
  roles:
  - role: add_package
    name: influxdb
    version: '*'
```

The following code installs a specific version of the package:

```yaml
- name: Add package
  hosts: localhost
  roles:
  - role: add_package
    name: influxdb
    version: '0.13.0'
```

The following code also installs the latest version of the package because `version` defaults to `*`:

```yaml
- name: Add package
  hosts: localhost
  roles:
  - role: add_package
    name: influxdb
```