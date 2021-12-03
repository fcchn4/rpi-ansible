# Raspberrry Pi - Ansible

This project supplies the necessary packages for an RPI system, among the packages are K3s.

## Requirements

1. SSH Server Enabled
2. SSH Private Key Associated
3. Static IP on RPI

## Packages

1. [K3s](https://rancher.com/docs/k3s/latest/en/)

## Commands

```bash
$ ansible-playbook base-rpi.yml -i inventory/inventory.yml
```

The default user **pi** does not request a password, therefore it is not necessary: **--ask-become-pass**.