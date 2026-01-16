# GitHub-Actions
![GitHub Actions](../../logos/github-actions.svg)

## Table of Contents

- [Overview](#overview)
- [Key Features](#key-features)
- [Common Use Cases](#common-use-cases)
- [Architecture & Workflow Execution Model](#architecture--workflow-execution-model)
- [Getting Started](#getting-started)
- [Advanced Example: Building and Publishing Docker Images](#advanced-example-building-and-publishing-docker-images)
- [Security: Managing Secrets and Sensitive Data](#security-managing-secrets-and-sensitive-data)
- [Best Practices for GitHub Actions](#best-practices-for-github-actions)
- [Resources](#resources)

## Overview

**GitHub Actions** is a continuous integration and continuous deployment (CI/CD) platform integrated directly into GitHub. It enables you to automate workflows directly from your repository using declarative YAML-based configuration files. GitHub Actions supports a wide range of automation tasks including building, testing, and deploying applications, with triggers based on repository events such as code pushes, pull requests, releases, or scheduled intervals.

## Key Features

- **Native Integration**: Built directly into GitHub with zero external platform setup required
- **Flexibility**: Highly customizable workflows supporting complex automation scenarios
- **Security Features**: Built-in environment management, encrypted secrets storage, and matrix build strategies
- **Multiple Execution Models**: Support for both GitHub-hosted runners (cloud-managed) and self-hosted runners (on-premises or custom infrastructure)
- **Cost-Effective**: Generous free allocation of runner minutes for public repositories

## Common Use Cases

GitHub Actions is particularly well-suited for the following scenarios:

- **Continuous Integration**: Automated building, unit testing, and code quality checks on every push or pull request
- **Container Management**: Building and pushing Docker images to registries
- **Security Operations**: Running automated security scans using tools like Trivy and Snyk
- **Continuous Deployment**: Automated deployment pipelines to platforms such as Kubernetes, AWS, or other cloud providers
- **Repository Management**: Workflow automation including automated issue labeling, approval processes, and dependency updates

## Architecture & Workflow Execution Model

The following diagram illustrates how GitHub Actions processes workflows from event trigger through execution:

```
┌─────────────────────────────────────────────────────────────────┐
│                      GITHUB ACTIONS WORKFLOW                    │
└─────────────────────────────────────────────────────────────────┘

  1. Repository Event Triggered
     ├─ Push to branch
     ├─ Pull request opened
     ├─ Scheduled event
     └─ Manual trigger (workflow_dispatch)
                    │
                    ▼
  2. Workflow Trigger Evaluation
     ├─ Check event conditions
     ├─ Evaluate filters (branches, tags, etc.)
     └─ Match workflow rules
                    │
                    ▼
  3. Runner Assignment
     ├─ GitHub-hosted runners (cloud-managed VMs)
     │  └─ ubuntu-latest, macos-latest, windows-latest
     └─ Self-hosted runners (custom infrastructure)
                    │
                    ▼
  4. Job Execution
     ├─ Execute jobs in sequence or parallel
     ├─ Each job runs on assigned runner
     └─ Execute steps within job:
         ├─ Actions (uses: actions/checkout@v4)
         ├─ Shell commands (run: npm test)
         └─ Other jobs (needs: job-name)
                    │
                    ▼
  5. Artifact Collection & Status Reporting
     ├─ Upload artifacts (build outputs, logs)
     ├─ Report job status (success/failure)
     └─ Trigger notifications and webhooks
```

**Key Components**:

- **Event**: Repository events that trigger workflow execution
  - Examples: `push`, `pull_request`, `schedule`, `workflow_dispatch`
  
- **Runner**: Execution environment where workflow jobs run
  - GitHub-hosted: Managed virtual machines maintained by GitHub
  - Self-hosted: Custom infrastructure under your control
  
- **Jobs**: Independent units of work that execute steps
  - Can run sequentially or in parallel
  - Defined in the `jobs:` section of the workflow file
  
- **Steps**: Individual actions or shell commands within a job
  - Execute in order within a single job
  - Can use predefined actions or run shell commands

## Getting Started

### Step 1: Create a Workflow File

Workflow files are stored in the `.github/workflows/` directory at the root of your repository. Create a new file named `ci.yml`:

**File Path**: `.github/workflows/ci.yml`

```yaml
name: CI Pipeline

on:
  push:
    branches: ["main"]
  pull_request:
    branches: ["main"]

jobs:
  build:
    runs-on: ubuntu-latest
    
    steps:
      - name: Checkout code
        uses: actions/checkout@v4
      
      - name: Set up Python environment
        uses: actions/setup-python@v4
        with:
          python-version: "3.10"
      
      - name: Install project dependencies
        run: pip install -r requirements.txt
      
      - name: Execute test suite
        run: pytest
```

**Explanation of key fields**:
- `name`: Human-readable identifier for the workflow
- `on`: Event(s) that trigger the workflow
- `runs-on`: Runner environment (e.g., ubuntu-latest, macos-latest, windows-latest)
- `uses`: Reusable action from GitHub Marketplace
- `run`: Shell command to execute

**Viewing Workflow Execution and Build Results**:

After pushing your workflow file to the repository, GitHub Actions will automatically trigger the workflow on matching events. To monitor builds and view the pipeline execution:

1. **Navigate to Actions tab**: Go to your repository on GitHub and click the **Actions** tab
2. **View workflow runs**: You'll see a list of all workflow runs with their status (✅ success or ❌ failed)
3. **Inspect job details**: Click on any run to see detailed logs for each job and step
4. **Review step output**: Expand individual steps to see command output, errors, and warnings
5. **Check artifacts**: If your workflow generates artifacts (build outputs, reports, etc.), download them from the run details page

This allows you to debug failures, monitor CI/CD progress in real-time, and verify that your pipeline stages complete successfully.

## Advanced Example: Building and Publishing Docker Images

The following workflow demonstrates how to build a Docker image and push it to a container registry:

```yaml
name: Build and Push Docker Image

on:
  push:
    branches: ["main"]
    tags: ["v*"]

jobs:
  build-and-push:
    runs-on: ubuntu-latest
    
    steps:
      - name: Checkout repository
        uses: actions/checkout@v4
      
      - name: Authenticate with Docker Hub
        uses: docker/login-action@v3
        with:
          username: ${{ secrets.DOCKER_USERNAME }}
          password: ${{ secrets.DOCKER_PASSWORD }}
      
      - name: Build and push Docker image
        uses: docker/build-push-action@v5
        with:
          context: .
          push: true
          tags: ${{ secrets.DOCKER_USERNAME }}/app:latest
```

**Key Concepts**:
- `secrets`: Encrypted environment variables stored in GitHub repository settings
- `context`: Build context for Docker (typically the repository root)
- `tags`: Image naming and versioning strategy

## Security: Managing Secrets and Sensitive Data

Properly managing secrets is critical for secure CI/CD pipelines. GitHub provides encrypted secret storage and management capabilities.

### Best Practices for Secrets Management

1. **Store Secrets in Repository Settings**
   - Navigate to: **Settings → Secrets and variables → Actions**
   - Store database credentials, API keys, container registry tokens, etc.

2. **Never Hardcode Credentials**
   - Credentials should NEVER appear in workflow files or version control
   - Always reference secrets using the `${{ secrets.VARIABLE_NAME }}` syntax

3. **Use Environment-Specific Variables**
   - Maintain separate secret sets for staging and production environments
   - Implement environment-level approval requirements for production deployments

### Example: Using Secrets in Workflows

```yaml
env:
  DATABASE_HOST: ${{ secrets.DB_HOST }}
  DATABASE_PORT: ${{ secrets.DB_PORT }}
  API_KEY: ${{ secrets.API_KEY }}

steps:
  - name: Deploy application
    run: ./deploy.sh
```

**Important**: GitHub automatically masks secret values in logs to prevent accidental exposure.

## Best Practices for GitHub Actions

Implementing these practices will help you create maintainable, efficient, and secure workflows:

1. **Start Simple, Scale Incrementally**
   - Begin with single-job workflows before creating complex pipelines
   - Add complexity only as requirements demand

2. **Leverage Reusable Workflows**
   - Create workflow templates to follow DRY principles
   - Share common patterns across multiple workflows

3. **Separate Concerns**
   - Maintain distinct workflows for CI and CD processes
   - Use separate workflows for different environments (staging, production)

4. **Implement Environment Protection Rules**
   - Require manual approvals before production deployments
   - Restrict deployment access to authorized personnel

5. **Monitor and Log**
   - Review workflow execution logs for failures and performance issues
   - Set up notifications for workflow failures

## Resources

- [GitHub Actions Official Documentation](https://docs.github.com/en/actions)
- [GitHub Marketplace Actions](https://github.com/marketplace?type=actions)
- [act - Local GitHub Actions Runner](https://github.com/nektos/act)
- [GitHub Actions Patterns and Best Practices](https://github.com/actions)
- [Workflow Syntax Reference](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions)
- [Using Secrets in Workflows](https://docs.github.com/en/actions/security-guides/encrypted-secrets)