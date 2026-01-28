#!/bin/bash

# Function to create README for a tool
create_readme() {
    local tool_path="$1"
    local tool_name="$2"
    local description="$3"
    local logo_slug="$(echo "$tool_name" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/--*/-/g' | sed 's/^-//' | sed 's/-$//')"
    
    mkdir -p "$tool_path"
    cat > "$tool_path/README.md" << EOT
# $tool_name

![$tool_name Logo](../logos/${logo_slug}.svg)

## Overview

$description

## Key Features

- Feature 1
- Feature 2
- Feature 3

## Getting Started

Installation and basic usage instructions.

## Resources

- [Official Website](https://example.com)
- [Documentation](https://docs.example.com)
- [GitHub Repository](https://github.com/example/$tool_name)

EOT
}

# List of tools: path, name, description
create_readme "tools/Asana" "Asana" "Work management platform for teams."
create_readme "tools/Azure/Boards" "Azure Boards" "Work item tracking for Azure DevOps."
create_readme "tools/Bitbucket/Issues" "Bitbucket Issues" "Issue tracking for Bitbucket."
create_readme "tools/Clickup" "Clickup" "All-in-one productivity platform."
create_readme "tools/GitHub/Projects" "GitHub Projects" "Project management for GitHub."
create_readme "tools/GitLab/Boards" "GitLab Boards" "Issue boards for GitLab."
create_readme "tools/Jira" "Jira" "Issue tracking and project management."
create_readme "tools/Linear" "Linear" "Issue tracking tool for software teams."
create_readme "tools/Monday.com" "Monday.com" "Work management platform."
create_readme "tools/Shortcut" "Shortcut" "Project management for software teams."
create_readme "tools/Taiga" "Taiga" "Open-source project management platform."
create_readme "tools/Trello" "Trello" "Kanban-style project management."
create_readme "tools/Wrike" "Wrike" "Work management and project collaboration."
create_readme "tools/Zoho/Sprints" "Zoho Sprints" "Agile project management."

create_readme "tools/Bugasura" "Bugasura" "Bug tracking and management."
create_readme "tools/Bugsee" "Bugsee" "In-app bug reporting and crash reporting."
create_readme "tools/Bugzilla" "Bugzilla" "Open-source bug tracking system."
create_readme "tools/Github/Issues" "Github Issues" "Issue tracking for GitHub."
create_readme "tools/Instabug" "Instabug" "In-app feedback and bug reporting."
create_readme "tools/Mantis-Bug-Tracker" "Mantis Bug Tracker" "Open-source bug tracking system."
create_readme "tools/Zoho/BugTracker" "Zoho BugTracker" "Bug tracking and management."

create_readme "tools/Atom" "Atom" "Hackable text editor for the 21st century."
create_readme "tools/Bluefish" "Bluefish" "GTK+ IDE for web development."
create_readme "tools/CodeLobster" "CodeLobster" "PHP, HTML, CSS, JavaScript editor."
create_readme "tools/Eclipse" "Eclipse" "IDE for Java and other languages."
create_readme "tools/Eclipse-Che" "Eclipse Che" "Cloud IDE."
create_readme "tools/gedit" "gedit" "Text editor for GNOME."
create_readme "tools/GNU-Emacs" "GNU Emacs" "Extensible, customizable text editor."
create_readme "tools/GNU-Nano" "GNU Nano" "Simple command-line text editor."
create_readme "tools/IntelliJ-IDEA" "IntelliJ IDEA" "IDE for Java and other JVM languages."
create_readme "tools/Neovim" "Neovim" "Hyperextensible Vim-based text editor."
create_readme "tools/Notepad++" "Notepad++" "Source code editor."
create_readme "tools/PyCharm" "PyCharm" "IDE for Python."
create_readme "tools/Sublime-Text" "Sublime Text" "Sophisticated text editor."
create_readme "tools/TextMate" "TextMate" "Text editor for macOS."
create_readme "tools/UltraEdit" "UltraEdit" "Text editor and hex editor."
create_readme "tools/Vim" "Vim" "Highly configurable text editor."
create_readme "tools/Visual-Studio-Code" "Visual Studio Code" "Code editor with built-in Git and extensions."
create_readme "tools/WebStorm" "WebStorm" "IDE for web development."

create_readme "tools/accelQ" "accelQ" "Continuous testing platform."
create_readme "tools/Apache-jMeter" "Apache jMeter" "Load testing tool."
create_readme "tools/Appium" "Appium" "Mobile application testing framework."
create_readme "tools/Bencher" "Bencher" "Continuous benchmarking."
create_readme "tools/Cypress" "Cypress" "End-to-end testing framework."
create_readme "tools/Gatling" "Gatling" "Load testing tool for web applications."
create_readme "tools/IBM-Rational-Functional-Tester" "IBM Rational Functional Tester" "Automated functional testing."
create_readme "tools/JUnit" "JUnit" "Unit testing framework for Java."
create_readme "tools/k6" "k6" "Load testing tool."
create_readme "tools/NUnit" "NUnit" "Unit testing framework for .NET."
create_readme "tools/Selenium" "Selenium" "Browser automation tool."
create_readme "tools/steadybit" "steadybit" "Chaos engineering and testing platform."
create_readme "tools/TestComplete" "TestComplete" "Automated testing tool."
create_readme "tools/TestNG" "TestNG" "Testing framework for Java."
create_readme "tools/TestRail" "TestRail" "Test case management."
create_readme "tools/TestSigma" "TestSigma" "AI-powered test automation."
create_readme "tools/Tricentis-Tosca" "Tricentis Tosca" "Model-based test automation."
create_readme "tools/Unified-Functional-Testing" "Unified Functional Testing (UFT)" "Functional testing tool."
create_readme "tools/Waitr" "Waitr" "Web application testing framework."
create_readme "tools/Zephyr" "Zephyr" "Test management tool."

create_readme "tools/Deductive.ai" "Deductive.ai" "AI-powered SRE and DevOps automation."
create_readme "tools/Resolve.ai" "Resolve.ai" "AI for incident resolution."
create_readme "tools/Sherlocks.ai" "Sherlocks.ai" "AI SRE assistant for monitoring and alerting."
create_readme "tools/Metoro" "Metoro" "AI SRE for Kubernetes teams."

create_readme "tools/AWS/CloudWatch" "AWS CloudWatch" "Amazon's monitoring and observability service for AWS resources and applications."
create_readme "tools/Better-Stack" "Better Stack" "Uptime monitoring, incident management, and status pages."

echo "READMEs created."
create_readme "tools/angle-grinder" "angle-grinder" "Slice and dice log files on the command line."
create_readme "tools/lnav" "lnav" "Log file navigator with search and automatic refresh."
create_readme "tools/GoAccess" "GoAccess" "Real-time web log analyzer and interactive viewer that runs in a terminal."
create_readme "tools/ngxtop" "ngxtop" "Real-time metrics for nginx server."

create_readme "tools/usql" "usql" "Universal command-line interface for SQL databases."
create_readme "tools/pgcli" "pgcli" "Postgres CLI with autocompletion and syntax highlighting."
create_readme "tools/mycli" "mycli" "Terminal client for MySQL with autocompletion and syntax highlighting."
create_readme "tools/litecli" "litecli" "SQLite CLI with autocompletion and syntax highlighting."
create_readme "tools/mssql-cli" "mssql-cli" "SQL Server CLI with autocompletion and syntax highlighting."
create_readme "tools/OSQuery" "OSQuery" "SQL powered operating system instrumentation, monitoring, and analytics framework."
create_readme "tools/pgsync" "pgsync" "Sync data from one Postgres database to another."
create_readme "tools/iredis" "iredis" "Terminal client for redis with autocompletion and syntax highlighting."
create_readme "tools/SchemaCrawler" "SchemaCrawler" "Generates an E-R diagram of your database."

create_readme "tools/gvisor" "gvisor" "Container runtime sandbox."
create_readme "tools/ctop" "ctop" "Top-like interface for container metrics."

create_readme "tools/portainer" "portainer" "Making Docker management easy."

create_readme "tools/docker-bench-security" "docker-bench-security" "Checks for dozens of common best-practices around deploying Docker."

create_readme "tools/RapidForge.io" "RapidForge.io" "Create endpoints, forms, and tasks using scripts to automate workflows."
create_readme "tools/CloudRay" "CloudRay" "Centralized platform for managing servers and automating infrastructure tasks."

create_readme "tools/Kinsta" "Kinsta" "Create and deploy web applications and databases in minutes."

create_readme "tools/Doozerd" "Doozerd" "Consistent distributed data store."

create_readme "tools/Tyk" "Tyk" "API and service management platform."

create_readme "tools/VyOS" "VyOS" "Open-source network OS for routing and firewall."

create_readme "tools/uWSGI" "uWSGI" "Application server container."

create_readme "tools/openssl" "openssl" "Robust, commercial-grade, and full-featured toolkit for the TLS and SSL protocols."
create_readme "tools/gnutls-cli" "gnutls-cli" "Client program to set up a TLS connection to some other computer."
create_readme "tools/sslyze" "sslyze" "Fast and powerful SSL/TLS server scanning library."
create_readme "tools/sslscan" "sslscan" "Tests SSL/TLS enabled services to discover supported cipher suites."
create_readme "tools/testssl.sh" "testssl.sh" "Testing TLS/SSL encryption anywhere on any port."
create_readme "tools/cipherscan" "cipherscan" "Very simple way to find out which SSL ciphersuites are supported by a target."
create_readme "tools/spiped" "spiped" "Utility for creating symmetrically encrypted and authenticated pipes between socket addresses."
create_readme "tools/Certbot" "Certbot" "EFF's tool to obtain certs from Let's Encrypt and (optionally) auto-enable HTTPS on your server."
create_readme "tools/mkcert" "mkcert" "Simple zero-config tool to make locally trusted development certificates with any names you'd like."
create_readme "tools/certstrap" "certstrap" "Tools to bootstrap CAs, certificate requests, and signed certificates."
create_readme "tools/Sublert" "Sublert" "Security and reconnaissance tool to automatically monitor new subdomains."
create_readme "tools/mkchain" "mkchain" "Open source tool to help you build a valid SSL certificate chain."
create_readme "tools/ssl-cert-check" "ssl-cert-check" "SSL Certification Expiration Checker."

create_readme "tools/GRV" "GRV" "Terminal based interface for viewing Git repositories."
create_readme "tools/Tig" "Tig" "Text-mode interface for Git."
