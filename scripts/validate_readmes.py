#!/usr/bin/env python3
"""
Awesome DevOps Tool README Validator

This script validates that all tool README files in the tools/ directory
follow the required format for the Awesome DevOps repository.

Usage:
    python3 scripts/validate_readmes.py

The script checks for:
- Proper header format (# Tool Name)
- Logo image link pointing to logos/ directory
- Required sections: Overview, Key Features, Getting Started, Resources
- Key Features section contains bullet points
- Resources section contains properly formatted links
- Logo file existence
- Header name matches directory name

Exit codes:
- 0: All READMEs are valid
- 1: One or more READMEs have validation errors
"""

import os
import re
from pathlib import Path

def validate_readme_format(readme_path, tool_name, tool_path):
    """Validate that a tool README follows the required format.

    Args:
        readme_path (str): Absolute path to the README.md file
        tool_name (str): Name of the tool (should match directory name)
        tool_path (str): Relative path to the tool directory from tools/

    Returns:
        list: List of error messages. Empty list if valid.
    """
    errors = []

    try:
        with open(readme_path, 'r', encoding='utf-8') as f:
            content = f.read()
    except Exception as e:
        return [f"Could not read file: {e}"]

    lines = content.split('\n')

    # Check header
    if not lines or not lines[0].startswith('# '):
        errors.append("README must start with '# Tool Name'")
    else:
        header_name = lines[0][2:].strip()
        if header_name != tool_name:
            errors.append(f"Header name '{header_name}' does not match expected '{tool_name}'")

    # Check logo
    logo_match = re.search(r'!\[.*?\]\((.*?)\)', content)
    if not logo_match:
        errors.append("Missing logo image link")
    else:
        logo_path = logo_match.group(1)
        if not logo_path.startswith('../logos/') and not logo_path.startswith('../../logos/'):
            errors.append(f"Logo path '{logo_path}' should point to logos/ directory")
        else:
            # Check if logo file exists
            logo_file = Path(readme_path).parent.parent / logo_path[3:]  # remove ../ or ../../
            if not logo_file.exists():
                errors.append(f"Logo file does not exist: {logo_file}")

    # Check sections
    required_sections = ['## Overview', '## Key Features', '## Getting Started', '## Resources']
    for section in required_sections:
        if section not in content:
            errors.append(f"Missing required section: {section}")

    # Check Key Features has bullets
    if '## Key Features' in content:
        features_match = re.search(r'## Key Features\n\n((?:- .+\n)+)', content)
        if not features_match:
            errors.append("Key Features section must contain bullet points starting with '- '")

    # Check Resources has links
    if '## Resources' in content:
        resources_match = re.search(r'## Resources\n\n((?:- \[.+\]\(.+\)\n)+)', content)
        if not resources_match:
            errors.append("Resources section must contain links in format '- [Name](URL)'")

    return errors

def main():
    """Main function to validate all tool READMEs."""
    base_path = Path(__file__).resolve().parent.parent
    tools_path = base_path / 'tools'

    if not tools_path.exists():
        print("Tools directory not found")
        return

    total_tools = 0
    valid_tools = 0
    invalid_tools = []

    # Walk through all subdirectories in tools/
    for tool_dir in tools_path.rglob('*'):
        if tool_dir.is_dir() and (tool_dir / 'README.md').exists():
            total_tools += 1
            readme_path = tool_dir / 'README.md'
            tool_name = tool_dir.name
            tool_rel_path = tool_dir.relative_to(tools_path)

            errors = validate_readme_format(str(readme_path), tool_name, str(tool_rel_path))

            if errors:
                invalid_tools.append((str(tool_rel_path), errors))
                print(f"❌ {tool_rel_path}")
                for error in errors:
                    print(f"   - {error}")
            else:
                valid_tools += 1
                print(f"✅ {tool_rel_path}")

    print(f"\nSummary:")
    print(f"Total tools: {total_tools}")
    print(f"Valid: {valid_tools}")
    print(f"Invalid: {len(invalid_tools)}")

    if invalid_tools:
        print("\nInvalid tools:")
        for tool, errors in invalid_tools:
            print(f"- {tool}: {len(errors)} errors")
        exit(1)  # Exit with error code if there are invalid tools

if __name__ == '__main__':
    main()