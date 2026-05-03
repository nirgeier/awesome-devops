# KubeStellar Console

## Overview

AI-powered, open-source multi-cluster Kubernetes management console providing a single pane of glass for DevOps teams managing workloads across multiple clusters.

## Key Features

- 150+ modular dashboard cards for real-time cluster observability
- Built-in AI chat agent (Claude, OpenAI, Gemini) with Kubernetes context via MCP
- Multi-cluster management across any kubeconfig-accessible cluster
- GPU workload monitoring and scheduling for AI/ML workloads
- Helm chart deployment for easy self-hosting
- GitOps-friendly architecture with declarative configuration

## Getting Started

```bash
# Deploy with Helm
helm install kubestellar-console ./deploy/helm
```

Or run locally:
```bash
./start-dev.sh  # Backend :8080, Frontend :5174
```

## Resources

- [Official Website](https://console.kubestellar.io)
- [Documentation](https://docs.kubestellar.io)
- [GitHub Repository](https://github.com/kubestellar/console)

