# Logo Management for Awesome DevOps

This directory contains SVG logos for DevOps tools and scripts to manage them automatically.

## Overview

The logo management system provides automated fetching, application, and validation of tool logos from the Simple Icons CDN. This ensures consistent branding and reduces manual maintenance overhead.

## Files

### Scripts

- `fetch_logos.sh` - Fetch individual SVG logos from Simple Icons CDN
- `fetch_all_logos.sh` - Bulk fetch logos for all tools
- `fetch_fallback_github.sh` - Fallback logo fetching from GitHub repositories
- `apply_logos.py` - Replace external logo URLs in READMEs with local SVGs

### Data

- `mapping.csv` - Tracks logo download status and mappings (if exists)
- `*.svg` - Individual tool logo files

## Usage

### Fetch Individual Logos

```bash
# Fetch specific tool logos
bash logos/fetch_logos.sh kubernetes docker jenkins

# Output: Downloads kubernetes.svg, docker.svg, jenkins.svg
```

### Bulk Logo Operations

```bash
# Fetch all missing logos (requires tool list)
bash logos/fetch_all_logos.sh

# Apply local logos to README files
python3 logos/apply_logos.py
```

### Manual Logo Addition

```bash
# Download a specific logo
curl -o logos/toolname.svg "https://cdn.simpleicons.org/toolname"

# Or use the fetch script
bash logos/fetch_logos.sh toolname
```

## Logo Naming Convention

- **Format**: `toolname.svg` (lowercase, hyphens for spaces)
- **Generation**: `echo "ToolName" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g'`
- **Examples**:
  - `Visual Studio Code` → `visual-studio-code.svg`
  - `GitHub Actions` → `github-actions.svg`
  - `AWS CloudFormation` → `aws-cloudformation.svg`

## Path Resolution

Logo paths in READMEs depend on directory nesting:

### Direct Tools (`tools/ToolName/`)

```markdown
![Tool Logo](../logos/tool-logo.svg)
```

### Nested Tools (`tools/Category/ToolName/`)

```markdown
![Tool Logo](../../logos/tool-logo.svg)
```

### Deeply Nested (`tools/Category/SubCategory/ToolName/`)

```markdown
![Tool Logo](../../../logos/tool-logo.svg)
```

## Integration with Validation

The logo system integrates with the validation script:

```bash
# Validate READMEs (includes logo existence checks)
python3 scripts/validate_readmes.py
```

Validation ensures:

- Logo files exist in `logos/` directory
- Logo paths are correctly resolved
- Logo references match naming conventions

## Mapping File (mapping.csv)

When present, `mapping.csv` tracks logo status:

```csv
tool_path,svg,status
tools/Docker,docker.svg,downloaded
tools/Kubernetes,kubernetes.svg,exists
tools/Jenkins,,not-found-2
```

Columns:

- `tool_path`: Relative path to tool directory
- `svg`: Logo filename
- `status`: Download status (downloaded, exists, not-found-2, etc.)

## Troubleshooting

### Logo Not Found

```bash
# Check if tool exists in Simple Icons
curl -I "https://cdn.simpleicons.org/toolname"

# Try alternative naming
bash logos/fetch_logos.sh "tool-name"
```

### Path Resolution Issues

- Count `../` levels from tool directory to repository root
- Ensure logo filename matches naming convention
- Run validation to identify path errors

### Bulk Operations

```bash
# Update all READMEs with local logos
python3 logos/apply_logos.py

# Re-validate after changes
python3 scripts/validate_readmes.py
```

## Contributing

When adding new tools:

1. Add logo to `logos/` directory using fetch script
2. Update tool README with correct logo path
3. Run validation to ensure logo integration
4. Update `mapping.csv` if using bulk operations

See `.github/CONTRIBUTING.md` for complete contribution guidelines.
