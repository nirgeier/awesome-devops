# SiteWatcher

![SiteWatcher Logo](../../logos/sitewatcher.svg)

## Overview

SiteWatcher monitors websites from a self-hosted Python and SQLite workspace. It records check history and can publish selected sites on public status pages.

## Key Features

- Monitor HTTP availability and chart response times.
- Check TLS certificates and domain registrations for upcoming expiration.
- Get alerts by email or Telegram and publish public status pages.

## Getting Started

Clone the repository and start the workspace with Docker Compose.

```bash
git clone https://github.com/NikKurkov/sitewatcher.git
cd sitewatcher
docker compose run --rm --build setup
docker compose up -d
```

Open the workspace at `http://127.0.0.1:8080` and add a domain.

## Resources

- [Source repository](https://github.com/NikKurkov/sitewatcher)
- [Public status page demo](https://monitoring.kurkov.dev/demo)
