# Cilium

![Cilium Logo](../../../../logos/cilium.svg)

## Overview

Cilium provides networking, security, and observability for cloud native workloads using eBPF. It is primarily targeted at Kubernetes but provides container networking primitives and advanced load-balancing features.

## Key Features

- eBPF-based dataplane for high performance
- Network policies with identity-aware enforcement
- Transparent load balancing and LB features
- Rich observability (Hubble)

## Getting Started (Developer / Docker)

Cilium is typically deployed to Kubernetes clusters. For local experimentation, check the developer/test images and quickstart in the project docs.

```bash
# See the official quickstart for local clusters (kind/minikube)
curl -L --remote-name-all https://raw.githubusercontent.com/cilium/cilium/master/install/kubernetes/quick_install.yaml

# Or run the Cilium CLI for guided installation
```

## Resources

- [GitHub](https://github.com/cilium/cilium)
- [Docs](https://cilium.io/docs/)
