# Ansible

![Ansible Logo](../logos/ansible.svg)

## Overview

Ansible is an open-source automation platform used for configuration management, application deployment, orchestration, and provisioning. It allows you to automate repetitive tasks using simple, human-readable YAML files called Playbooks.
Ansible provides agentless automation by connecting to remote systems via SSH (for Linux/macOS hosts) or WinRM (for Windows hosts).

## Why Ansible?

- Simple and human-readable
- Agentless
- Scalable from one machine to thousands
- Large module ecosystem
- Cloud provider integrations (AWS, Azure, GCP)

## Key Concepts

- Inventory
  List of hosts and groups Ansible manages.
- Modules
  Units of work (e.g., apt, yum, service, copy, win_chocolatey).
- Playbook
  YAML file defining tasks to run on hosts.
- Role
  Reusable structure for organizing playbooks.
- Control Node
  Machine where Ansible is installed/runs.
- Managed Nodes
  Machines Ansible operates on.

## Getting Started
### Installation and basic usage instructions:

### Ubuntu / Debian

`sudo apt update`
`sudo apt install ansible -y`

### CentOS / RHEL / Fedora

`sudo dnf install ansible -y`

### Install on macOS
Using Homebrew (recommended):
`brew update`
`brew install ansible`

### Verify installation:

`ansible --version`

### Install on Windows
Ansible does not run natively on Windows as a control node.
However, use Windows Subsystem for Linux (WSL) (Recommended) and run the commands above.

## Basic Usage

Test connectivity to localhost (if supported):
`ansible localhost -m ping`

Run a simple command:
`ansible all -i inventory.ini -m shell -a "uptime"`

## Working with Inventory
inventory.ini

```
[webservers]
192.168.1.10
192.168.1.11

[dbservers]
db01 ansible_host=192.168.1.20 ansible_user=root
```
YAML Inventory (optional)

```
all:
  hosts:
    local:
      ansible_connection: local
```
## Running Ad-Hoc Commands
Check disk space

`ansible all -m shell -a "df -h"`

Install a package

`ansible webservers -m apt -a "name=nginx state=present" --become`

## Writing Your First Playbook

```
---
- name: Install NGINX on web servers
  hosts: webservers
  become: yes
  tasks:
    - name: Install nginx
      apt:
        name: nginx
        state: present
        update_cache: yes

    - name: Ensure nginx is running
      service:
        name: nginx
        state: started
        enabled: yes
```

Run the playbook:

`ansible-playbook -i inventory.ini site.yml`

## Common Use Cases
- Server provisioning
- Installing and configuring applications
- CI/CD automation
- Cloud resource provisioning (AWS/GCP/Azure)
- User/ servers and permission management
- Patching and system updates

## Troubleshooting
Check connection issues:
`ansible all -m ping -vvv`

Check WinRM configuration for Windows:
`ansible windows -m win_ping`

Dry run a playbook:
`ansible-playbook site.yml --check`

Syntax check:
`ansible-playbook site.yml --syntax-check`


## Resources

- [Ansible Documentation]: (https://docs.ansible.com) 
- [GitHub Repository](https://github.com/example/Ansible)
