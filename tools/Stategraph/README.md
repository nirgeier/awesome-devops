# Stategraph

![Stategraph Logo](../logos/stategraph.svg)

## Overview

Stategraph is a Terraform and OpenTofu state backend that eliminates the state file bottleneck. It replaces the flat state file with a real database, enabling teams to plan in parallel with resource-level locking, query state via SQL, and run plans in seconds instead of minutes.

## Key Features

- Replace flat state files with a real database
- Resource-level locking instead of global state locks
- Parallel plan and apply across teams
- SQL-queryable infrastructure state
- Blast radius analysis before applying changes
- Infrastructure inventory and gap analysis
- Multi-state transactions
- No code changes required

## Getting Started

```bash
# Import an existing Terraform state
stategraph import terraform.tfstate

# Run a plan
stategraph plan

# Apply changes
stategraph apply
```

## Resources

- [Official Website](https://stategraph.com)
- [Documentation](https://stategraph.com/docs)
