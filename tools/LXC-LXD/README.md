# LXC-LXD
<img src="../../logos/lxc.svg" alt="LXC Logo" width="120"/>



## Overview


LXC (Linux Containers) is a low-level container runtime that provides OS-level virtualization by leveraging Linux kernel features such as namespaces and cgroups. It allows you to create isolated Linux environments that behave like lightweight virtual machines while sharing the host’s kernel. LXC is typically used by advanced users who want fine-grained control over container configuration, networking, and resource limits, and it serves as a foundation layer for higher-level container management systems.

LXD is a system container and virtual machine manager built on top of LXC that provides a more user-friendly and enterprise-ready experience. It runs as a daemon and exposes a REST API and CLI for managing containers and VMs, offering features like image management, storage backends, snapshots, live migration, clustering, and advanced networking. While LXC focuses on the core container mechanics, LXD acts as a full platform that makes managing containers and virtual machines simpler, scalable, and suitable for production environments.

## Difference between LXC and LXD

LXC and LXD are closely related but serve different roles in Linux containerization. LXC (Linux Containers) is the low-level technology that provides lightweight OS-level virtualization, using kernel features like namespaces and cgroups to create and manage containers that behave similarly to virtual machines but share the host kernel. 

LXD, on the other hand, is a higher-level container and VM manager built on top of LXC that adds a REST API, a daemon-based architecture, image management, storage pools, networking, and clustering features. While LXC is more flexible and closer to raw system tooling for advanced users who want fine-grained control, LXD focuses on ease of use, production-ready management, and a VM-like user experience, making it better suited for larger-scale environments and DevOps workflows.


## Key Features

🐧 LXC (Linux Containers)
- Low-level container runtime
- Provides the basic tools (lxc-create, lxc-start, etc.) to run system containers directly on the Linux kernel.
- Fine-grained control
- Lets you manually configure namespaces, cgroups, networking, and security settings for maximum flexibility.
- Lightweight system containers
- Runs full Linux distributions with minimal overhead, closer to a traditional OS environment than app-focused containers like Docker.

🚀 LXD
- System Containers and Virtual Machines
LXD can run both lightweight Linux system containers and full virtual machines, allowing you to choose between high performance or full hardware isolation depending on your use case.

- Advanced Networking and Storage
LXD provides built-in support for bridged networking, NAT, DHCP, and firewalling, along with powerful storage backends like ZFS, Btrfs, and Ceph, including snapshots and backups.

- Security by Default
Containers are unprivileged by default and protected using AppArmor/SELinux, Seccomp, and cgroups, providing strong isolation and resource control without complex manual configuration.


## Getting Started

## Installation

LXC (Linux Containers) is supported on most major Linux distributions, including Ubuntu, Debian, Fedora, Arch Linux, CentOS/RHEL, Alpine Linux, and Gentoo. Essentially, any modern Linux distribution with a kernel version ≥ 2.6.32 and the required libraries can run LXC.

`sudo apt-get install lxc`

Your system will then have all the LXC commands available, all its templates as well as the python3 binding should you want to script LXC.

Use the following command to check whether the Linux kernel has the required configuration:

`lxc-checkconfig`

## Requirements

Hard dependencies:

One of glibc, musl libc, uclib or bionic as your C library
Linux kernel >= 2.6.32
Extra dependencies for lxc-attach: (command that starts container shell)

Linux kernel >= 3.8

Extra dependencies for unprivileged containers:

libpam-cgfs configuring your system for unprivileged CGroups operation
A recent version of shadow including newuidmap and newgidmap
Linux kernel >= 3.12



**LXD Installation-**

LXD is supported primarily on Linux distributions that have Snapd available (like Ubuntu, Debian, Fedora, Arch, CentOS, and more information inside this [link](https://snapcraft.io/lxd?_gl=1*1f0ig8*_ga*MTEzNDgxMTkzOC4xNzYzODUxMDQ1*_ga_5LTL1CNEJM*czE3NjM4NTEwNDQkbzEkZzEkdDE3NjM4NTEwNTAkajU0JGwwJGgw#distros) ). 

`sudo snap install lxd`

**Requirements-**

- The recommended installation method is via the LXD Snap package, which ensures you get the latest stable release across multiple distros. 

- LXD is very flexible and has no strict hardware requirements for containers, but it does require a modern Linux kernel with namespaces, cgroups, and security features enabled to function properly.

- Recommended minimum Linux kernel 4.15+

- The LXD snap must be available for your Linux distribution.

- The snapd daemon must be installed.


**Configure LXD -**

Run the following command and either accept the defaults or choose different options when prompted:

`lxd init`
Install the OS you'd like to use in your container or VM - 


`lxc launch <image_server>:<image_name> <instance_name>`

Example:

`lxc launch ubuntu:24.04 ubuntu-container`
**Note** append --vm to this command if you wish to run it in a virtual machine

## Resources

## LXC

- [Official Website](https://linuxcontainers.org/lxc/)
- [Documentation](https://linuxcontainers.org/lxc/documentation/)
- [GitHub Repository](https://github.com/lxc/lxc)

## LXD

- [Official Website](https://ubuntu.com/lxd)
- [Documentation](https://documentation.ubuntu.com/lxd/)
- [GitHub Repository](https://github.com/canonical/lxd)
