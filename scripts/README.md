# README Validator for Awesome DevOps

This directory contains validation scripts for the Awesome DevOps repository.

## validate_readmes.py

A Python script that validates the format of tool README files in the `tools/` directory.

### Purpose

The validator ensures that all tool contributions follow the standardized format required for the Awesome DevOps repository. This helps maintain consistency across all tool documentation and ensures contributors provide complete information.

### Features

- **Automated Validation**: Checks all tool READMEs against the required format
- **Detailed Error Reporting**: Provides specific feedback on formatting issues
- **CI/CD Ready**: Returns appropriate exit codes for automated workflows
- **Fast Execution**: Quickly scans all tools and reports issues

### Usage

#### Basic Usage

```bash
python3 scripts/validate_readmes.py
```

#### In CI/CD Pipeline

```yaml
- name: Validate READMEs
  run: python3 scripts/validate_readmes.py
```

### Validation Checks

The script performs the following validations for each tool README:

#### 1. Header Format

- Must start with `# Tool Name`
- Tool name must match the directory name

#### 2. Logo Image

- Must include a logo image link: `![Tool Logo](../logos/tool.svg)`
- Logo file must exist in the `logos/` directory
- Path must point to the logos directory

#### 3. Required Sections

All of the following sections must be present:

- `## Overview`
- `## Key Features`
- `## Getting Started`
- `## Resources`

#### 4. Content Format

- **Key Features**: Must contain bullet points starting with `-`
- **Resources**: Must contain links in format `- [Name](URL)`

### Output Format

The script provides clear, actionable output:

```text
❌ Tool-Name
   - Missing logo image link
   - Missing required section: ## Getting Started

✅ Valid-Tool

Summary:
Total tools: 381
Valid: 4
Invalid: 377
```

### Exit Codes

- `0`: All READMEs are valid
- `1`: One or more READMEs have validation errors

### Examples

#### Valid README Structure

```markdown
# Docker

![Docker Logo](../logos/docker.svg)

## Overview

Docker is a platform for developing, shipping, and running applications in isolated containers.

## Key Features

- Containerization technology
- Lightweight and portable
- Docker Compose support

## Getting Started

```bash
# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```

## Resources

- [Official Website](https://www.docker.com/)
- [Documentation](https://docs.docker.com/)
- [GitHub Repository](https://github.com/docker/docker)
```

#### Common Issues

1. **Missing Logo**: Ensure the logo SVG exists in `logos/` directory
2. **Wrong Header**: Header must exactly match directory name
3. **Missing Sections**: All four sections are required
4. **Empty Features/Resources**: Must contain at least one bullet point/link

### Integration

This script is integrated into the contribution workflow. Contributors should run it before submitting pull requests to ensure their tool entries meet the repository standards.

See `.github/CONTRIBUTING.md` for the full contribution guidelines.
