# Gitea

<img src="../../logos/gitea.svg" alt="Gitea Logo" width="120"/>

## Overview

Gitea is a lightweight, self-hosted Git service written in Go. It provides a simple and fast way to set up your own Git server, offering features like issue tracking, pull requests, wiki pages, code review, collaboration features, a package registry and CI/CD via Gitea Actions. Gitea is designed to be easy to install and maintain, making it ideal for organizations that want to keep their code repositories private and under their control.

## Key Features

- Git hosting & collaboration: repositories, branches/tags, web code browsing, and access control.
- Pull Requests & code review: review workflows with comments and merge support.
- CI/CD with Gitea Actions: GitHub Actions–compatible workflow approach.
- Package Registry: supports many package types for private/public artifact hosting.
- Fast and resource-efficient: designed to remain lightweight while supporting modern Git workflows.

## Getting Started

### Prerequisites

Install Docker + Docker Compose v2 (Gitea’s docs note Compose v1 is deprecated; use Compose v2).

Create a working directory:

`mkdir gitea && cd gitea`
Create docker-compose.yml
```yaml
version: "3"

networks:
  gitea:
    external: false

services:
  server:
    image: docker.gitea.com/gitea:1.25.3
    container_name: gitea
    environment:
      - USER_UID=1000
      - USER_GID=1000
    restart: always
    networks:
      - gitea
    volumes:
      - ./gitea:/data
      - /etc/timezone:/etc/timezone:ro
      - /etc/localtime:/etc/localtime:ro
    ports:
      - "3000:3000"
      - "222:22" 
```
Notes:

If you use host volumes, ensure the mapped folder is owned by the UID/GID you set, otherwise the container may not start. See https://docs.gitea.com/installation/docker/#volumes
After first start, config will be written to /data/gitea/conf/app.ini

Start Gitea:
`docker-compose up -d`

Complete setup in the browser:
`http://<server-ip>:3000`

### Option B: Install from Binary (Linux)

Download + install the binary:
```bash
wget -O gitea https://dl.gitea.com/gitea/1.25.3/gitea-1.25.3-linux-amd64
chmod +x gitea
sudo cp gitea /usr/local/bin/gitea
```
Prepare the environment
Check that Git is installed (Gitea requires Git >= 2.0):

```bash
git --version
```

Create required directories:
```bash
sudo mkdir -p /var/lib/gitea/{custom,data,log}
sudo chown -R git:git /var/lib/gitea
sudo chmod -R 750 /var/lib/gitea

sudo mkdir /etc/gitea
sudo chown root:git /etc/gitea
sudo chmod 770 /etc/gitea
```
run:
`GITEA_WORK_DIR=/var/lib/gitea/ /usr/local/bin/gitea web -c /etc/gitea/app.ini`

run as a service:
`sudo systemctl enable gitea --now`

## Requirements
- Git: version >= 2.0 required.
- Database (choose one): PostgreSQL, MySQL, MariaDB, SQLite (built-in), or MSSQL. 
- Recommended baseline (small teams): 2 CPU cores + 1GB RAM. 

## Resources

- [Official Website](https://gitea.io/)
- [Documentation](https://docs.gitea.com/)
- [GitHub Repository](https://github.com/go-gitea/gitea)
