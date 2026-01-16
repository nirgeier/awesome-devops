# Argo
<img src="../../logos/argo.svg" alt="Argo Logo" width="120"/>

## Overview

Argo is a suite of open‑source, Kubernetes‑native tools built to automate and orchestrate cloud‑native workloads. Originally created by the founders of Akuity, it’s now a graduated Cloud Native Computing Foundation (CNCF) project.  
Argo enables declarative, GitOps‑style workflows, progressive delivery, event‑driven automation, and more — giving teams a powerful and flexible foundation for Kubernetes application delivery.

---

## Difference Between Argo and Argo CD

Although “Argo” often refers collectively to its ecosystem, here’s a breakdown of how **Argo (the suite)** and **Argo CD** differ:

| Feature | Argo (Workflows, Events, Rollouts) | Argo CD |
|---|---|---|
| Primary Focus | Automated workflows, event‑driven orchestration, and progressive rollout strategies | GitOps‑based continuous delivery and Kubernetes app deployment |
| Use Cases | Running pipelines, batch jobs, or responding to events | Syncing Kubernetes cluster state with Git repositories |
| Trigger Mechanisms | Scheduled, event‑based, or manually triggered workflows | Git commits, branch/PR state, manual syncs |
| Core Value | Flexible, container‑native automation | Declarative, Git‑centric deployment control |

In short:  
- **Argo** is the orchestration toolkit  
- **Argo CD** is the GitOps CD engine

---

## Key Features

Argo (and its sub‑projects) provide:

- Kubernetes‑native architecture — built on Kubernetes APIs for tight integration  
- Declarative configuration via YAML  
- GitOps‑driven application deployment (via Argo CD)  
- Workflow automation (Argo Workflows)  
- Progressive delivery / rollout strategies (Argo Rollouts)  
- Event‑driven automation (Argo Events)  
- Role‑based access control (RBAC), audit trails, and SSO (in Argo CD)  
- Web‑based UI and CLI tools  
- Scalability and high availability for production use  

---

# Getting Started

## Argo Prerequisites

## 🔑 General Requirements
- A working **Kubernetes cluster**
  - Local: Minikube, Kind, k3s/k3d, Docker Desktop
  - Cloud: GKE, EKS, AKS, etc.
- **kubectl** installed and configured to access your cluster
- **Namespaces** created for Argo components (`argo`, `argocd`)

---

## 🚀 Argo Workflows
- Kubernetes cluster with RBAC enabled
- `kubectl` CLI configured
- Create namespace:
    `kubectl create namespace argo`

### Installation

Below are the installation commands for each Argo component:

#### 1. Argo Workflows

Automates and orchestrates Kubernetes jobs and tasks as workflows

installation:

`kubectl create namespace argo`
`kubectl apply -n argo -f https://raw.githubusercontent.com/argoproj/argo-workflows/stable/manifests/install.yaml`


Verify installation:

`kubectl get pods -n argo`

Run a simple Argo Workflow:

`argo submit --watch https://raw.githubusercontent.com/argoproj/argo-workflows/main/examples/hello-world.yaml -n argo`


#### 2. Argo Rollouts

Argo Rollouts provides advanced deployment strategies (blue-green, canary) for Kubernetes

installation:

```bash
kubectl create namespace argo-rollouts
kubectl apply -f https://raw.githubusercontent.com/argoproj/argo-rollouts/stable/manifests/install.yaml
```
#### 3. Argo Events

Triggers workflows or actions based on events from various sources.

installation:

```bash
kubectl create namespace argo-events
kubectl apply -n argo-events -f https://raw.githubusercontent.com/argoproj/argo-events/stable/manifests/install.yaml
```

Verify installation:

`kubectl get pods -n argo-events`

#### 4. ArgoCD

Continuously deploys applications from Git repositories to Kubernetes clusters (GitOps).

installation:

`kubectl create namespace argocd`
`kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml`

Verify installation:

`kubectl get pods -n argocd`

Expose the Argo CD API server:

`kubectl port-forward svc/argocd-server -n argocd 8080:443`

Access UI:

`https://localhost:8080`

Get initial admin password:

`kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | base64 -d`


Create an Argo CD Application:


```bash
argocd app create my-app \
  --repo https://github.com/example/repo.git \
  --path manifests \
  --dest-server https://kubernetes.default.svc \
  --dest-namespace default
```

Sync the application:

`argocd app sync my-app`


## Resources

- [Official Website](https://argoproj.github.io/)
- [Documentation](https://argo-cd.readthedocs.io/)
- [GitHub Repository](https://github.com/argoproj/argo-cd)