# Terragrunt

![Terragrunt Logo](../../logos/terragrunt.svg)

## Overview

Terragrunt is a thin wrapper for Terraform that provides extra tools for working with multiple Terraform modules, managing remote state, and enforcing best practices.

## Key Features

- DRY (Don't Repeat Yourself) infrastructure code with module composition
- Remote state management with automatic locking and versioning
- Environment-specific configurations and deployments
- Dependency management between Terraform modules
- Pre and post hooks for custom automation
- Automated Terraform workflows with plan and apply operations

## Getting Started

Installation and basic usage:

```bash
# Install Terragrunt (on Linux/macOS)
wget https://github.com/gruntwork-io/terragrunt/releases/download/v1.5.0/terragrunt_linux_amd64
chmod +x terragrunt_linux_amd64
sudo mv terragrunt_linux_amd64 /usr/local/bin/terragrunt

# Or using Homebrew on macOS
brew install terragrunt

# Initialize and manage infrastructure
cd your-infrastructure
terragrunt init
terragrunt plan
terragrunt apply
```

For more detailed setup and configuration examples, visit the official documentation.

## Resources

- [Official Website](https://terragrunt.gruntwork.io/)
- [Documentation](https://terragrunt.gruntwork.io/docs/)
- [GitHub Repository](https://github.com/gruntwork-io/terragrunt)
- [Gruntwork](https://www.gruntwork.io/)
