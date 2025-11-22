# OpenShift

![OpenShift Logo](../../logos/redhatopenshift.svg)

## 📖 Table of Contents

- [Overview](#overview)
- [Key Features](#key-features)
- [OpenShift vs. Kubernetes](#openshift-vs-kubernetes)
- [High-Level Architecture](#high-level-architecture)
- [Core OpenShift Concepts](#core-openshift-concepts)
- [Getting Started](#getting-started)
- [CLI Cheatsheet](#openshift-cli-oc-cheatsheet)
- [Troubleshooting CRC](#troubleshooting-crc)
- [Resources](#resources)

---

## Overview

Red Hat OpenShift is an enterprise-grade container application platform built on top of Kubernetes. It provides a complete solution for building, deploying, and managing containerized applications across hybrid cloud environments.

OpenShift comes with comprehensive developer tools, integrated security, and automated operations, allowing teams to focus on code rather than on infrastructure.

## Key Features

- **Developer & Administrator Consoles:** Distinct web-based GUIs for managing workloads and cluster health.
- **Source-to-Image (S2I):** A toolkit that builds ready-to-run container images directly from source code.
- **Built-in CI/CD:** Integrated pipelines using OpenShift Pipelines (based on Tekton).
- **Integrated Registry:** An internal, private container registry to manage image streams.
- **Strict Security:** Default use of Security Context Constraints (SCCs) and SELinux for enterprise compliance.
- **Operator Hub:** A catalog of certified operators for one-click service deployment (databases, monitoring, etc.).

## OpenShift vs. Kubernetes

OpenShift is an upstream distribution of Kubernetes that integrates additional tools for security, CI/CD, and cluster management by default. While Kubernetes provides the orchestration kernel, OpenShift provides the surrounding platform services required for enterprise operations.

| Feature | Kubernetes (K8s) | Red Hat OpenShift |
| :--- | :--- | :--- |
| **Nature** | Open-source project (Community supported) | Enterprise product (Red Hat supported) |
| **OS Support** | Flexible (Ubuntu, Debian, CentOS, etc.) | **Strict.** Requires Red Hat CoreOS (RHCOS) for Control Plane; RHCOS or RHEL for Workers. |
| **Security** | Basic RBAC; policies configured manually. Root containers allowed by default. | **Strict by default.** Prevents root containers using SCCs & SELinux. |
| **Networking** | Uses **Ingress** (Requires manual Ingress Controller setup like Nginx). | Uses **Routes** (Out-of-the-box HAProxy ingress). |
| **Image Registry** | "Bring Your Own" (Must install Docker Hub, Harbor, etc.). | **Built-in** private registry included automatically. |
| **Updates** | Manual or managed by cloud provider. | Automated "Over-the-Air" updates for the OS and Cluster versions. |
| **Management** | `kubectl` CLI and basic dashboard (often unused). | `oc` CLI and a fully featured **Web Console** (GUI). |

## High-Level Architecture

OpenShift relies on a highly automated architecture powered by **Operators** (software robots that manage the system).

### 1. The Control Plane (Master Nodes)

The "brain" of the cluster. It manages the state of the cluster and makes global decisions.

- **API Server:** The entry point for all REST commands (users, admins, and automation).
- **etcd:** A consistent key-value store that saves the cluster's state.
- **Controllers:** Processes that regulate the state of the system (e.g., ensuring the correct number of pods are running).
- **HAProxy:** Often used to route traffic to the API server in high-availability setups.

### 2. Worker Nodes (Compute)

Where your applications actually run.

- **Kubelet:** The agent that accepts orders from the Control Plane to start/stop pods.
- **CRI-O:** The lightweight container engine (replacing Docker) that actually runs the containers.
- **Pods:** The smallest deployable units, containing one or more application containers.

### 3. Key Infrastructure Components

- **Red Hat CoreOS (RHCOS):** An immutable, minimal operating system designed specifically for running containers. It cannot be modified directly; it is updated automatically by the cluster.
- **Operators:** A method of packaging, deploying, and managing a Kubernetes application. In OpenShift, **everything is an Operator**—from the web console to the network plugin.

## Core OpenShift Concepts

Beyond standard Kubernetes objects (Pods, Services, ConfigMaps), OpenShift introduces specific custom resources to streamline development.

### Projects (Namespaces +)

Kubernetes uses **Namespaces**. OpenShift uses **Projects**.

- A Project is a Kubernetes Namespace with additional annotations.
- It enforces strict isolation: by default, a user in Project A cannot see or access resources in Project B.

### Routes (Ingress)

Kubernetes uses Ingress, OpenShift uses **Routes**.

- A Route exposes a Service at a host name (e.g., `www.example.com`) so external clients can reach it.
- It automatically configures the built-in HAProxy router.
- Supports easy TLS (SSL) termination.

### ImageStreams

An **ImageStream** does not contain the actual image data, but presents a single virtual view of related images (like specific tags of a Docker image).

- It watches for updates: If a base image changes in the registry, the ImageStream sees it and can trigger a new build or deployment automatically based on that change.

### Dynamic Storage

OpenShift automates the provisioning of persistent data using **StorageClasses**.

- Developers request a **PersistentVolumeClaim (PVC)** in their Pod spec without needing to know the underlying storage details.
- OpenShift dynamically talks to the underlying infrastructure (AWS EBS, vSphere, NFS) to create the volume and attach it to the Pod.

## Getting Started

### Installation with OpenShift Local (CRC)

Run a minimal OpenShift 4 cluster on your local machine or server using [Red Hat OpenShift Local](https://developers.redhat.com/products/openshift-local/overview) (formerly CodeReady Containers).

> **Requirements:** 4 vCPUs, 15GB RAM (Allocated), 35GB disk space.

```bash
# 1. Download CRC from https://console.redhat.com/openshift/create/local

# 2. Extract the archive and move the 'crc' binary to your $PATH

# 3. Allocate resources (adjust based on your machine's capacity)
crc config set cpus 4
crc config set memory 16384
crc config set disk-size 50

# 4. Set up the host environment (one-time configuration)
crc setup

# Start the cluster (requires the Pull Secret from the download page)
crc start

# Get the Web Console URL and admin credentials
# (Use this if running headless/remote to find your login info)
crc console --credentials

# Configure your shell to use the 'oc' client cached by CRC
eval $(crc oc-env)

# Login via CLI (Use the credentials printed by the command above)
oc login -u developer https://api.crc.testing:6443
```

### Using the OpenShift CLI (`oc`)

The `oc` client is a superset of `kubectl` with additional convenience commands.

```bash
# Login to your cluster
oc login https://api.your-cluster.com:6443

# Create a new project (Namespace)
oc new-project my-app

# Deploy an application from source (S2I)
# Example using a Python sample repo
oc new-app https://github.com/sclorg/django-ex.git

# Expose the application to the outside world (Create a Route)
# Note: Unlike vanilla K8s, OpenShift uses Routes instead of Ingress by default
oc expose service/django-ex

# View the external URL to access your app
oc get route
```

## OpenShift CLI (`oc`) Cheatsheet

### Authentication & Projects

| Command | Description |
| :--- | :--- |
| `oc login -u <user> <url>` | Login to the cluster interactively. |
| `oc whoami` | Show the current logged-in user. |
| `oc new-project <name>` | Create a new project and switch to it. |
| `oc project <name>` | Switch context to a specific project. |

### Application Lifecycle

| Command | Description |
| :--- | :--- |
| `oc new-app <git-url>` | Create a build, deployment, and service from source code (S2I). |
| `oc new-app <image-name>` | Deploy an application from an existing container image. |
| `oc start-build <bc>` | Manually trigger a new build. |
| `oc logs -f <pod-name>` | Stream logs in real-time. |
| `oc rsh <pod-name>` | Open a remote shell inside a running container. |

### Networking

| Command | Description |
| :--- | :--- |
| `oc expose service <svc>` | Create a Route to expose a service externally. |
| `oc get routes` | List all external URLs for the current project. |

### Common Shortnames

| Shortname | Resource |
| :--- | :--- |
| `po` | Pod |
| `svc` | Service |
| `route` | Route |
| `bc` | BuildConfig |
| `is` | ImageStream |
| `dc` | DeploymentConfig |

## Troubleshooting CRC

### Common Issues

- **Pull Secret:** Ensure you copied the full Pull Secret from the Red Hat dashboard into the prompt during `crc start`, or save it to a file and run `crc start -p pull-secret.txt`.
- **Resources:** CRC is resource-intensive. If it fails to start, ensure you are not running other heavy VMs simultaneously, or increase allocated resources using `crc config set`.
- **DNS Issues:** If `oc login` fails, ensure your machine can resolve `api.crc.testing`. You may need to disable VPNs during the initial setup.

## Resources

- [Official Website](https://www.redhat.com/en/technologies/cloud-computing/openshift)
- [Documentation](https://docs.openshift.com/)
- [Interactive Learning Portal](https://learn.openshift.com/)
- [CLI Tools Download](https://console.redhat.com/openshift/downloads)
- [GitHub Repository](https://github.com/openshift/origin)
- [OpenShift YouTube Channel](https://www.youtube.com/c/openshift)
