# Awesome DevOps - AI Agent Instructions

## Project Overview

This repository maintains a curated list of DevOps tools organized by category. Each tool has a standardized README format with logo, overview, features, getting started guide, and resources.

## Architecture & Structure

### Directory Layout

- `tools/` - Tool entries organized by category (e.g., `tools/Docker/`, `tools/Kubernetes/`)
- `logos/` - SVG logos for tools, fetched from Simple Icons CDN
- `scripts/` - Automation scripts for README generation and validation
- Main `README.md` - Generated table of contents with tool links and descriptions

### Tool README Format

Every tool follows this exact structure:

```markdown
# Tool Name

![Tool Name Logo](../logos/tool-logo.svg)

## Overview

[Description from main README table]

## Key Features

- Bullet points of main features

## Getting Started

Installation and usage examples with code blocks

## Resources

- [Official Website](url)
- [Documentation](url)
- [GitHub Repository](url)
```

## Critical Workflows

### Adding a New Tool

1. Create directory: `tools/CategoryName/ToolName/`
2. Generate README: `bash scripts/create_readmes.sh` (adds template)
3. Add logo: Place SVG in `logos/` directory
4. Update main README table manually
5. Validate: `python3 scripts/validate_readmes.py`

### Logo Management

- Logos stored as `logos/toolname.svg`
- Referenced as `../logos/toolname.svg` (from tool dir) or `../../logos/` (nested)
- Auto-fetch: `bash logos/fetch_logos.sh toolname`
- Apply logos: `python3 logos/apply_logos.py` (replaces external URLs with local SVGs)

### Validation

- Run `python3 scripts/validate_readmes.py` before PR
- Checks: header format, logo existence, required sections, content structure
- Returns exit code 1 on failures (CI/CD ready)

## Key Conventions

### Naming & Paths

- Tool directories: PascalCase with hyphens (e.g., `Visual-Studio-Code`)
- Logo files: lowercase with hyphens (e.g., `visual-studio-code.svg`)
- Logo slug generation: `echo "ToolName" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g'`

### Logo Path Resolution

- Direct tools: `../logos/logo.svg`
- Nested tools (e.g., `tools/Azure/DevOps/`): `../../logos/logo.svg`
- Validation script checks logo file existence

### Content Synchronization

- Tool descriptions in main README table are source of truth
- `scripts/update_summaries.py` syncs descriptions to individual READMEs
- Manual updates to main README require running sync script

## Integration Points

### External Dependencies

- Simple Icons CDN for logo fetching
- GitHub for repository links
- No runtime dependencies - static content only

### Cross-Component Communication

- Main README references tool paths: `[Tool](tools/Category/Tool)`
- Logo paths relative to tool directory depth
- Scripts operate on entire repository structure

## Development Patterns

### Script Usage Examples

```bash
# Create new tool README template
bash scripts/create_readmes.sh

# Validate all READMEs
python3 scripts/validate_readmes.py

# Sync descriptions from main README
python3 scripts/update_summaries.py

# Fetch logos
bash logos/fetch_logos.sh kubernetes docker

# Apply local logos
python3 logos/apply_logos.py
```

### File Relationships

- `logos/mapping.csv` tracks logo download status
- `scripts/create_readmes.sh` generates standardized templates
- `scripts/validate_readmes.py` enforces format compliance
- Main `README.md` contains master tool list and descriptions

## Common Pitfalls

- Logo paths must match directory nesting level
- Tool names must match directory names exactly
- All four sections (Overview, Key Features, Getting Started, Resources) required
- Logo files must exist before validation passes
