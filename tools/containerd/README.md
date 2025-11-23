# containerd

![containerd Logo](../../logos/containerd.svg)

## Overview

containerd is a high-performance container runtime that handles the core container lifecycle.
It powers Docker and Kubernetes by managing containers, images, storage, and networking.
In DevOps, it is used to automate and standardize deployments, ensure consistent environments across servers,
and integrate seamlessly with Kubernetes for orchestrating applications in production.

## Key Features

- Pull, push, and store OCI-compliant container images.
- Start, stop, pause, and delete containers efficiently.
- Fully integrates with Kubernetes via the CRI.
- Lightweight and optimized for production workloads.
- Isolate containers using namespaces and cgroups.
- Expose APIs for automation and debugging.

## Getting Started

### Installation (Linux example)

```bash
sudo apt update
sudo apt install containerd
```

Generate default configuration:

```bash
sudo containerd config default | sudo tee /etc/containerd/config.toml
```

Restart the service:

```bash
sudo systemctl restart containerd
```

### Basic Usage (ctr CLI)

List images:

```bash
sudo ctr images list
```

List running containers:

```bash
sudo ctr containers list
```

Run a simple container:

```bash
sudo ctr run -t docker.io/library/alpine:latest test1 /bin/sh
```
## Resources

- [Official Website](https://containerd.io)
- [Documentation](https://github.com/containerd/containerd/tree/main/docs)
- [GitHub Repository](https://github.com/containerd/containerd)
 
