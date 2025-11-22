# Contributing to Awesome DevOps

* Thank you for your interest in contributing to Awesome DevOps! 
* This document provides guidelines for contributing to this project.

## How to Contribute

1. **Fork the Repository**: Click the "Fork" button at the top right of this page to create your own copy of the repository.

2. **Clone Your Fork**: Clone your forked repository to your local machine.

   ```bash
   git clone https://github.com/your-username/awesome-devops.git
   cd awesome-devops
   ```

3. **Create a Branch**: Create a new branch for your contribution.

   ```bash
   git checkout -b your-feature-branch
   ```

4. **Add Your Tool**:
   - Add your tool to the appropriate category in the `tools/` directory.
   - Use the `scripts/create_readmes.sh` script to generate a README for your tool.
   - Ensure the tool follows the existing structure and naming conventions.
   * **Validate your contribution**: Run `python3 scripts/validate_readmes.py` to ensure your README follows the required format.

5. **Update Logos** (if applicable):
   - If your tool has a logo, add it to the `logos/` directory.
   - Update the `logos/mapping.csv` file with the tool name and logo filename.
   - Run the logo application script: `python3 logos/apply_logos.py`

6. **Commit Your Changes**:

   ```bash
   git add .
   git commit -m "Add [Tool Name] to Awesome DevOps"
   ```

7. **Push to Your Fork**:

   ```bash
   git push origin your-feature-branch
   ```

8. **Create a Pull Request**: Go to the original repository and click "New Pull Request". Select your branch and submit the PR.

## Guidelines

- **Tool Categories**: Place tools in the most appropriate category. If a new category is needed, discuss it in your PR.
* **README Format**: Use the provided script to generate READMEs. Ensure all fields are filled accurately. READMEs must follow this structure:
  * `# Tool Name`
  * `![Tool Name Logo](../logos/tool-logo.svg)`
  * `## Overview`
  * `## Key Features` (with bullet points)
  * `## Getting Started`
  * `## Resources` (with links)
- **Quality**: Only submit tools that are actively maintained and relevant to DevOps.
- **Duplicates**: Check if the tool already exists before submitting.
- **Links**: Provide official documentation, website, and repository links where possible.

## Pull Request Requirements

When submitting a pull request, please ensure:

* [ ] The tool is added to the correct category in `tools/`.
* [ ] A README.md is created for the tool using the script.
* [ ] Logos are added and mapped if available.
* [ ] All links are valid and point to official sources.
* [ ] The commit message follows the format: "Add/Updated [`Tool Name`] to Awesome DevOps".
* [ ] No unrelated changes are included.

Thank you for helping make Awesome DevOps better!
