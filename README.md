# 🚀 Awesome DevOps

* A curated list of awesome DevOps tools, technologies, and resources to help you build, deploy, and maintain modern applications.
* If you want to contribute, please check out the [Contributing Guidelines](#tab=contributing-ov-file).

[![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

## 📋 Table of Contents

- [Version Control](#version-control)
- [CI/CD](#cicd)
- [Container Technologies](#container-technologies)
- [Container Orchestration](#container-orchestration)
- [Infrastructure as Code](#infrastructure-as-code)
- [Configuration Management](#configuration-management)
- [Monitoring & Observability](#monitoring--observability)
- [Logging](#logging)
- [Cloud Platforms](#cloud-platforms)
- [Open Source Cloud Platforms](#open-source-cloud-platforms)
- [Operating Systems](#operating-systems)
- [Distributed Filesystems](#distributed-filesystems)
- [Internal Developer Platforms](#internal-developer-platforms)
- [Artifact Management](#artifact-management)
- [Service Mesh](#service-mesh)
- [Service Discovery](#service-discovery)
- [Chaos Engineering](#chaos-engineering)
- [API Gateway](#api-gateway)
- [Code Review](#code-review)
- [Distributed Messaging](#distributed-messaging)
- [Programming Languages](#programming-languages)
- [Chat and ChatOps](#chat-and-chatops)
- [Security & Compliance](#security--compliance)
- [Incident Management](#incident-management)
- [Project Management](#project-management)
- [Bug Tracking](#bug-tracking)
- [Code Editors](#code-editors)
- [Continuous Testing](#continuous-testing)
- [AI SRE Tools](#ai-sre-tools--sre-copilots)
- [VPN](#vpn)
- [Databases](#databases)
- [Web Servers](#web-servers)
- [SSL](#ssl)
- [GitOps](#gitops)
- [MCP](#mcp)
- [Networking Tools](#networking-tools)

## Version Control

| Tool                                   | Description                                                                                                                                                                                                                                                                                         |
|----------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **[Azure DevOps](tools/Azure/DevOps)** | Microsoft's comprehensive DevOps platform integrating Git repositories, CI/CD pipelines, project boards, testing tools, and artifact management.                                                                                                                                                   |
| **[Bitbucket](tools/Bitbucket)**       | Atlassian's Git repository hosting platform with pull requests, code reviews, branch permissions, and built-in CI/CD.                                                                                                                                                                              |
| **[Gitea](tools/Gitea)**               | Lightweight self-hosted Git service written in Go, offering issue tracking, pull requests, and wiki pages.                                                                                                                                                                                         |
| **[Git](tools/Git)**                   | Distributed version control system for tracking code changes, enabling branching, merging, and collaborative development.                                                                                                                                                                         |
| **[Gitblit](tools/Gitblit)**           | Pure Java Git solution providing web interface, user management, access control, and repository mirroring.                                                                                                                                                                                         |
| **[GitHub](tools/GitHub)**             | Web-based platform for Git hosting, code collaboration, pull requests, issues, wikis, and CI/CD via GitHub Actions.                                                                                                                                                                                 |
| **[GitLab](tools/GitLab)**             | Complete DevOps platform with Git repositories, CI/CD pipelines, security scanning, monitoring, and container registry.                                                                                                                                                                            |
| **[Gogs](tools/Gogs)**                 | Simple self-hosted Git service with web interface, issue tracking, and wiki support.                                                                                                                                                                                                                |
| **[Phabricator](tools/Phabricator)**   | Collection of web tools for code review, repository browsing, task management, and project collaboration.                                                                                                                                                                                          |
| **[Radicle](tools/Radicle)**           | Sovereign peer-to-peer network for decentralized Git collaboration with issue tracking and patch management.                                                                                                                                                                                       |
| **[RhodeCode](tools/RhodeCode)**       | Centralized repository manager supporting Git, Mercurial, and Subversion with web interface and CI/CD integration.                                                                                                                                                                                  |

## CI/CD

| Tool                                                                       | Description                                                                                                                                 |
|----------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------|
| **[Argo](tools/Argo)**                                                     | Open Source Kubernetes native workflows, events, CI and CD.                                                                                 |
| **[ArgoCD](tools/ArgoCD)**                                                 | Declarative GitOps continuous delivery tool for Kubernetes applications.                                                                    |
| **[Bamboo](tools/Bamboo)**                                                 | Atlassian's CI/CD server that ties automated builds, tests, and releases together in a single workflow.                                     |
| **[Bitrise](tools/Bitrise)**                                               | CI/CD for mobile applications.                                                                                                              |
| **[Buildbot](tools/Buildbot)**                                             | Automate all aspects of the software development cycle.                                                                                     |
| **[Buildkite](tools/Buildkite)**                                           | Run fast, secure, and scalable continuous integration pipelines on your own infrastructure.                                                 |
| **[CircleCI](tools/CircleCI)**                                             | Cloud-based CI/CD platform with fast builds and easy configuration using YAML files.                                                        |
| **[Cirrus CI](tools/Cirrus-CI)**                                           | Continuous integration system built for the era of cloud computing.                                                                         |
| **[Codefresh](tools/Codefresh)**                                           | GitOps automation platform for Kubernetes apps.                                                                                             |
| **[Concourse](tools/Concourse)**                                           | Pipeline-based continuous thing-doer.                                                                                                       |
| **[Dagger](tools/Dagger)**                                                 | CI/CD as Code that Runs Anywhere.                                                                                                           |
| **[Drone](tools/Drone)**                                                   | Container-native continuous delivery platform built on Docker.                                                                              |
| **[Earthly](tools/Earthly)**                                               | Develop CI/CD pipelines locally and run them anywhere.                                                                                      |
| **[Evergreen](tools/Evergreen)**                                           | A Distributed Continuous Integration System from MongoDB.                                                                                   |
| **[Flagger](tools/Flagger)**                                               | Progressive delivery Kubernetes operator (Canary, A/B Testing and Blue/Green deployments).                                                  |
| **[GitHub Actions](tools/GitHub-Actions)**                                 | Workflow automation platform integrated directly into GitHub repositories for CI/CD pipelines.                                              |
| **[GitLab CI/CD](tools/GitLab-CI-CD)**                                     | Built-in continuous integration and deployment tool within GitLab platform.                                                                 |
| **[GitLab Pipelines by puzl.cloud](tools/GitLab-Pipelines-by-puzl.cloud)** | Blazing-fast, cost-effective execution layer for GitLab CI/CD pipeline jobs, offering per-second billing and k8s API for runner management. |
| **[goCD](tools/goCD)**                                                     | Delivery and Release Automation server.                                                                                                     |
| **[Integrity](tools/Integrity)**                                           | Continuous Integration server.                                                                                                              |
| **[Jenkins](tools/Jenkins)**                                               | Open-source automation server for building, testing, and deploying software with extensive plugin ecosystem.                                |
| **[Kraken CI](tools/Kraken-CI)**                                           | Modern CI/CD, open-source, on-premise system that is highly scalable and focused on testing.                                                |
| **[PipeCD](tools/PipeCD)**                                                 | Continuous Delivery for Declarative Kubernetes, Serverless and Infrastructure Applications.                                                 |
| **[Semaphore Community Edition](tools/Semaphore-Community-Edition)**       | Open-source CI/CD for building, testing, and deploying projects.                                                                            |
| **[Spinnaker](tools/Spinnaker)**                                           | Fast, safe, repeatable deployments for every Enterprise.                                                                                    |
| **[Strider](tools/Strider)**                                               | Continuous Deployment/Continuous Integration platform.                                                                                      |
| **[TeamCity](tools/TeamCity)**                                             | JetBrains' build management and continuous integration server with powerful features.                                                       |
| **[Tekton](tools/Tekton)**                                                 | Cloud-native CI/CD framework for creating pipelines on Kubernetes.                                                                          |
| **[Travis CI](tools/Travis-CI)**                                           | Hosted continuous integration service for testing and deploying projects hosted on GitHub.                                                  |
| **[werf](tools/werf)**                                                     | Open Source CI/CD tool for building Docker images & deploying them to Kubernetes using a GitOps approach.                                   |
| **[Zuul](tools/Zuul)**                                                     | Drives continuous integration, delivery, and deployment systems with a focus on project gating.                                             |

## Container Technologies

| Tool                               | Description                                                                              |
|------------------------------------|------------------------------------------------------------------------------------------|
| **[containerd](tools/containerd)** | Industry-standard container runtime focusing on simplicity, robustness, and portability. |
| **[CRI-O](tools/CRI-O)**           | Lightweight container runtime specifically for Kubernetes.                               |
| **[Docker](tools/Docker)**         | Platform for developing, shipping, and running applications in isolated containers.      |
| **[LXC/LXD](tools/LXC-LXD)**       | Linux container technology providing OS-level virtualization.                            |
| **[Podman](tools/Podman)**         | Daemonless container engine for developing, managing, and running OCI containers.        |

## Container Orchestration

| Tool | Description |
|------|-------------|
| **[Amazon ECS](tools/AWS/ECS)** | AWS's fully managed container orchestration service. |
| **[Amazon EKS](tools/AWS/EKS)** | Managed Kubernetes service on AWS. |
| **[Azure AKS](tools/Azure/AKS)** | Managed Kubernetes service on Microsoft Azure. |
| **[Docker Swarm](tools/Docker-Swarm)** | Native clustering and orchestration tool for Docker containers. |
| **[Google GKE](tools/Google/GKE)** | Managed Kubernetes service on Google Cloud Platform. |
| **[Kubernetes](tools/Kubernetes)** | Open-source container orchestration platform for automating deployment, scaling, and management. |
| **[KubeVela](tools/KubeVela)** | Modern application delivery platform for hybrid, multi-cloud environments. |
| **[Nomad](tools/Nomad)** | HashiCorp's flexible workload orchestrator for containers and non-containerized applications. |
| **[OpenShift](tools/OpenShift)** | Red Hat's enterprise Kubernetes platform with developer and operational tools. |

## Infrastructure as Code

| Tool                                                                         | Description                                                                                    |
|------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------|
| **[AWS CloudFormation](tools/AWS/CloudFormation)**                           | AWS service for modeling and provisioning cloud resources using templates.                     |
| **[Azure Resource Manager (ARM)](tools/Azure/Resource-Manager)**             | Deployment and management service for Azure with template-based deployments.                   |
| **[CDK (Cloud Development Kit)](tools/CDK)**                                 | AWS framework for defining cloud infrastructure using familiar programming languages.          |
| **[Crossplane](tools/Crossplane)**                                           | Open-source Kubernetes add-on for managing cloud infrastructure.                               |
| **[Google Cloud Deployment Manager](tools/Google/Cloud-Deployment-Manager)** | Infrastructure deployment service for Google Cloud Platform.                                   |
| **[Pulumi](tools/Pulumi)**                                                   | Modern infrastructure as code platform supporting multiple programming languages.              |
| **[Terraform](tools/Terraform)**                                             | HashiCorp's tool for building, changing, and versioning infrastructure safely and efficiently. |
| **[Selefra](tools/Selefra)**                                                | Open-source policy-as-code software providing analytics for multi-cloud and SaaS.              |
| **[Spacelift](tools/Spacelift)**                                             | Flexible orchestration solution for Infrastructure as Code development.                         |
| **[Stacktape](tools/Stacktape)**                                             | Developer-friendly Infrastructure as Code framework built on top of AWS.                        |
| **[Digger](tools/Digger)**                                                   | Open-source Infrastructure as Code management tool for CI/CD systems.                           |
| **[Deployment.io](tools/Deployment.io)**                                     | DevOps co-pilot for developers to automate deployments to AWS.                                  |
| **[Terrateam](tools/Terrateam)**                                            | Open-source alternative to Terraform Cloud with GitOps-first approach.                           |
| **[Atlantis](tools/Atlantis)**                                               | Terraform Pull Request Automation for automated infrastructure code reviews.                    |

## Configuration Management

| Tool | Description |
|------|-------------|
| **[Ansible](tools/Ansible)** | Agentless automation tool for configuration management, application deployment, and task automation. |
| **[CFEngine](tools/CFEngine)** | Lightweight configuration management system focused on high-scale automation. |
| **[Chef](tools/Chef)** | Configuration management tool using Ruby-based DSL for system configuration automation. |
| **[Puppet](tools/Puppet)** | Automated configuration management and deployment platform for infrastructure as code. |
| **[SaltStack](tools/SaltStack)** | Python-based event-driven automation and configuration management platform. |
| **[RapidForge.io](tools/RapidForge.io)** | Create endpoints, forms, and tasks using scripts to automate workflows. |
| **[CloudRay](tools/CloudRay)** | Centralized platform for managing servers and automating infrastructure tasks. |

## Monitoring & Observability

| Tool | Description |
|------|-------------|
| **[Alerta](tools/Alerta)** | Scalable monitoring system with minimal configuration. |
| **[angle-grinder](tools/angle-grinder)** | Slice and dice log files on the command line. |
| **[AWS CloudWatch](tools/AWS/CloudWatch)** | Amazon's monitoring and observability service for AWS resources and applications. |
| **[Amon](tools/Amon)** | Modern server monitoring platform. |
| **[Anemometer](tools/Anemometer)** | MySQL Slow Query Monitor. |
| **[Apitally](tools/Apitally)** | Analytics, request logging and monitoring for REST APIs with a focus on simplicity and data privacy. |
| **[AppSignal](tools/AppSignal)** | Catch errors, track performance, monitor hosts, detect anomalies — all in one tool. |
| **[Autometrics](tools/Autometrics)** | Open-source micro framework for observability. |
| **[Banshee](tools/Banshee)** | Real-time anomalies(outliers) detection system for periodic metrics. |
| **[BetterUptime](tools/BetterUptime)** | Free for 10 monitors, checked every 3 minutes, improved incident management capabilities. |
| **[Better Stack](tools/Better-Stack)** | Uptime monitoring, incident management, and status pages. |
| **[BlueWave Uptime](tools/BlueWave-Uptime)** | Open-source, self-hosted monitoring tool built with React.js, Node.js, and MongoDB, designed to track server uptime, response times, and incidents in real-time with beautiful visualizations. |
| **[Bolo](tools/Bolo)** | Building distributed, scalable monitoring systems. |
| **[Brubeck](tools/Brubeck)** | Statsd-compatible stats aggregator written in C. |
| **[Bugsnag](tools/Bugsnag)** | Application monitoring, event logging and aggregation. |
| **[cAdvisor](tools/cAdvisor)** | Analyzes resource usage and performance of running containers. |
| **[Cachet](tools/Cachet)** | Beautiful open-source status page system. |
| **[Canary Checker](tools/Canary-Checker)** | Open-source health check platform. |
| **[Cabot](tools/Cabot)** | Self-hosted monitoring and alerts service. |
| **[Cacti](tools/Cacti)** | Web-based network monitoring and graphing tool. |
| **[Centreon](tools/Centreon)** | IT infrastructure and application monitoring for service performance. |
| **[Checkly](tools/Checkly)** | Code-first synthetic monitoring for modern DevOps. Monitor your APIs and apps at a fraction of the price of legacy providers. Powered by a Monitoring as Code workflow and Playwright. |
| **[check_mk](tools/check_mk)** | Collection of extensions for Nagios. |
| **[Collectd](tools/Collectd)** | System statistics collection daemon. |
| **[Dash](tools/Dash)** | A low-overhead monitoring web dashboard for a GNU/Linux machine. |
| **[Datadog](tools/Datadog)** | Cloud-scale monitoring and analytics platform for infrastructure and applications. |
| **[dish](tools/dish)** | A lightweight monitoring service that efficiently checks socket connections and can be configured remotely. |
| **[Dynatrace](tools/Dynatrace)** | AI-powered full-stack monitoring platform for applications and infrastructure. |
| **[elmah.io](tools/elmah.io)** | Uptime monitoring combined with application error logging. |
| **[ElastiFlow](tools/ElastiFlow)** | Network flow monitoring with the Elastic Stack. |
| **[Elastic APM](tools/Elastic-APM)** | Application performance monitoring built on the Elastic Stack. |
| **[Facette](tools/Facette)** | Time series data visualization software. |
| **[Flapjack](tools/Flapjack)** | Monitoring notification routing & event processing system. |
| **[Fluere](tools/Fluere)** | Versatile network interface monitoring and analysis tool, capable of capturing network packets in pcap format, NetFlow data. supports lua based plugins. |
| **[Freeboard](tools/Freeboard)** | Real-time dashboard builder for IoT and web mashups. |
| **[Freshping](tools/Freshping)** | Free for 50 monitors, checked every 1 minutes, supports websocket monitoring. |
| **[Glances](tools/Glances)** | Monitoring information through a curses or web interface. |
| **[Globalping CLI](tools/Globalping-CLI)** | Run network commands like ping, traceroute, and mtr from global locations. |
| **[Grai](tools/Grai)** | Open-source observability integrating data impact analysis into CI. |
| **[Grafana](tools/Grafana)** | Open-source platform for monitoring and observability with beautiful, customizable dashboards. |
| **[gvisor](tools/gvisor)** | Container runtime sandbox. |
| **[Graphite](tools/Graphite)** | Store numeric time-series data and render graphs. |
| **[Healthchecks](tools/Healthchecks)** | Cron monitoring tool. |
| **[Heap Analytics](tools/Heap-Analytics)** | Easy event tracking without coding. |
| **[HolmesGPT](tools/HolmesGPT)** | Open-source AI assistant for investigating alerts and finding root causes. |
| **[Honeybadger](tools/Honeybadger)** | Monitor application errors, performance, uptime, and logs in one simple tool for developers. |
| **[Icinga](tools/Icinga)** | Monitors availability and performance. |
| **[InfluxDB](tools/InfluxDB)** | Time series database. |
| **[Instatus](tools/Instatus)** | Quick and beautiful status page. |
| **[Keep](tools/Keep)** | Open-source alerting CLI for developers. |
| **[Last9](tools/Last9)** | OpenTelemetry-native observability platform for APM, metrics, logs, and traces, built to handle high-cardinality data at scale. |
| **[Levitate](tools/Levitate)** | A Managed Time Series Metrics and Events Warehouse built to handle High Cardinality data. |
| **[LibreNMS](tools/LibreNMS)** | Fork of Observium. |
| **[Loggly](tools/Loggly)** | Aggregate & analyze logs from any source. |
| **[Logit.io](tools/Logit.io)** | Centralise logs and metrics using the ELK Stack, Grafana & Open Distro. |
| **[Matomo](tools/Matomo)** | Take back control with Matomo – a powerful web analytics platform that gives you 100% data ownership. |
| **[Merlinn](tools/Merlinn)** | Open-source AI on-call developer. |
| **[Middleware](tools/Middleware)** | Full-stack cloud observability platform. |
| **[Moira](tools/Moira)** | Most powerful alerting system, backed by Graphite. |
| **[Monit](tools/Monit)** | Managing and monitoring Unix systems. |
| **[Monitive](tools/Monitive)** | Free for 1 service, checked every 10 minutes with unlimited email & twitter alerts. |
| **[Munin](tools/Munin)** | Networked resource monitoring tool. |
| **[Naemon](tools/Naemon)** | Fast, stable, and innovative monitoring framework. |
| **[Nagios](tools/Nagios)** | Powerful monitoring system for infrastructure, services, and applications. |
| **[Netdata](tools/Netdata)** | Instantly diagnose slowdowns and anomalies in infrastructure. |
| **[New Relic](tools/New-Relic)** | Observability platform providing insights into application performance and user experience. |
| **[Observium](tools/Observium)** | SNMP monitoring for servers and networking devices. Runs on linux. |
| **[openITCOCKPIT](tools/openITCOCKPIT)** | Powerful open-source monitoring tool built upon Naemon or Nagios, featuring seamless integration with Grafana, an array of comprehensive reports, and visualizations. |
| **[OpenTelemetry](tools/OpenTelemetry)** | Vendor-neutral observability framework for collecting metrics, logs, and traces. |
| **[Opsview](tools/Opsview)** | Based on Nagios 4, Opsview Core is ideal for small IT and test environments. |
| **[openssl](tools/openssl)** | Cryptography and SSL/TLS toolkit. |
| **[OverOps](tools/OverOps)** | OverOps provides Automated Root Cause (ARC) analysis to reduce the time to identify and fix critical production application errors. |
| **[PCP (Performance Co-Pilot)](tools/PCP)** | System performance analysis toolkit. |
| **[Phare](tools/Phare)** | Free 100k monitoring events per months, 30s intervals, unlimited users, incident management, and sleek status pages. |
| **[Prometheus](tools/Prometheus)** | Open-source monitoring and alerting toolkit with powerful query language and time-series database. |
| **[Screpy](tools/Screpy)** | Screpy is a web analyzer and monitoring tool. Its powered by Google Lighthouse. |
| **[Sematext Cloud](tools/Sematext-Cloud)** | Infrastructure and log monitoring with service and log auto-discovery. Basic plan is free. |
| **[Sematext Logs](tools/Sematext-Logs)** | Log monitoring with log auto-discovery and alerting; comes with out of the box dashboards, pipelines for transforming, masking, dropping, sampling log events and more. Basic plan is free. |
| **[Sematext Synthetics](tools/Sematext-Synthetics)** | Website uptime, API, and SSL certificate monitoring. Includes status pages and scriptable multi-page user transaction monitoring, etc. |
| **[Sensu](tools/Sensu)** | Simple, scalable, multi-cloud monitoring. |
| **[Sentry](tools/Sentry)** | Error monitoring that helps discover, triage, and prioritize errors. |
| **[Seyren](tools/Seyren)** | An alerting dashboard for Graphite. |
| **[Shinken](tools/Shinken)** | Monitoring framework. |
| **[Shynet](tools/Shynet)** | Modern, privacy-friendly, and cookie-free web analytics. |
| **[StatusList.app](tools/StatusList.app)** | Uptime monitoring with debug details and hosted status page in one dashboard. |
| **[StatusPal](tools/StatusPal)** | Communicate incidents and maintenance effectively. |
| **[Tig](tools/Tig)** | Text-mode interface for Git. |
| **[Steampipe](tools/Steampipe)** | Universal SQL interface for any cloud API and dashboards. |
| **[UpTime.onl](tools/UpTime.onl)** | Free for 10 URLs, checked every 5 minutes. |
| **[UpTime360](tools/UpTime360)** | checked every 5 minutes. Monitor server, website, blacklist, custom services and publish status pages. |
| **[Uptime Kuma](tools/Uptime-Kuma)** | An easy-to-use self-hosted monitoring tool. |
| **[UptimeRobot](tools/UptimeRobot)** | Free for 50 monitors, checked every 5 minutes. |
| **[Zabbix](tools/Zabbix)** | Enterprise-class monitoring solution for networks, servers, and applications. |

## Logging

| Tool | Description |
|------|-------------|
| **[ELK Stack (Elasticsearch, Logstash, Kibana)](tools/ELK-Stack)** | Popular log management and analysis solution for centralized logging. |
| **[Fluentd](tools/Fluentd)** | Open-source data collector for unified logging layer. |
| **[Graylog](tools/Graylog)** | Free and open-source log management platform with powerful search capabilities. |
| **[Loki](tools/Loki)** | Horizontally scalable log aggregation system designed by Grafana Labs. |
| **[Seq](tools/Seq)** | Centralized structured logging for .NET applications. |
| **[Splunk](tools/Splunk)** | Platform for searching, monitoring, and analyzing machine-generated data. |

## Cloud Platforms

| Tool | Description |
|------|-------------|
| **[Alibaba Cloud](tools/Alibaba-Cloud)** | Integrated suite of cloud products and services. |
| **[Amazon Web Services (AWS)](tools/AWS)** | Comprehensive cloud computing platform with 200+ services worldwide. |
| **[Microsoft Azure](tools/Azure)** | Cloud computing platform with integrated tools for building and managing applications. |
| **[DigitalOcean](tools/DigitalOcean)** | Developer-friendly cloud platform with simple pricing and easy-to-use interface. |
| **[Equinix](tools/Equinix)** | Global data center and colocation provider for enterprise network and cloud computing. |
| **[Google Cloud Platform (GCP)](tools/Google/Cloud-Platform)** | Suite of cloud computing services running on Google infrastructure. |
| **[IBM Cloud](tools/IBM/Cloud)** | Cloud platform combining PaaS and IaaS with AI and analytics capabilities. |
| **[Kinsta](tools/Kinsta)** | Create and deploy web applications and databases in minutes. |
| **[Linode](tools/Linode)** | Cloud hosting provider offering virtual machines and Kubernetes engine. |
| **[Oracle Cloud](tools/Oracle/Cloud)** | Enterprise cloud computing platform with IaaS, PaaS, and SaaS solutions. |
| **[Scaleway](tools/Scaleway)** | Single way to create, deploy, and scale infrastructure in the cloud. |
| **[Vultr](tools/Vultr)** | Easily deploy cloud servers, bare metal, and storage worldwide. |

## Security & Compliance

| Tool | Description |
|------|-------------|
| **[Aqua Security](tools/Aqua-Security)** | Container and cloud-native security platform. |
| **[Checkov](tools/Checkov)** | Static code analysis tool for infrastructure as code security and compliance. |
| **[Falco](tools/Falco)** | Cloud-native runtime security tool for Kubernetes threat detection. |
| **[Open Policy Agent (OPA)](tools/Open-Policy-Agent)** | Policy-based control engine for cloud-native environments. |
| **[SonarQube](tools/SonarQube)** | Platform for continuous inspection of code quality and security vulnerabilities. |
| **[Snyk](tools/Snyk)** | Developer security platform for finding and fixing vulnerabilities in code and dependencies. |
| **[Trivy](tools/Trivy)** | Open-source vulnerability scanner for containers and other artifacts. |
| **[Vault](tools/Vault)** | HashiCorp's tool for secrets management, encryption as a service, and privileged access management. |

## Artifact Management

| Tool | Description |
|------|-------------|
| **[AWS ECR](tools/AWS/ECR)** | Fully managed Docker container registry on AWS. |
| **[Docker Registry](tools/Docker-Registry)** | Storage and distribution system for Docker images. |
| **[Google Artifact Registry](tools/Google/Artifact-Registry)** | Universal package manager for containers and language packages on GCP. |
| **[Harbor](tools/Harbor)** | Open-source container registry with security, identity, and management features. |
| **[JFrog Artifactory](tools/JFrog-Artifactory)** | Universal artifact repository manager with advanced features for DevOps. |
| **[Nexus Repository](tools/Nexus-Repository)** | Universal artifact repository manager supporting multiple formats. |

## Service Mesh

| Tool | Description |
|------|-------------|
| **[AWS App Mesh](tools/AWS/App-Mesh)** | Service mesh providing application-level networking on AWS. |
| **[Consul](tools/Consul)** | HashiCorp's service mesh solution with service discovery and configuration. |
| **[Istio](tools/Istio)** | Open-source service mesh providing traffic management, security, and observability. |
| **[Linkerd](tools/Linkerd)** | Lightweight, security-first service mesh for Kubernetes. |

## GitOps

| Tool | Description |
|------|-------------|
| **[ArgoCD](tools/ArgoCD)** | Declarative GitOps continuous delivery tool for Kubernetes. |
| **[Flux](tools/Flux)** | GitOps operator for Kubernetes that keeps clusters in sync with configuration sources. |
| **[Jenkins X](tools/Jenkins-X)** | CI/CD platform built on Kubernetes with GitOps automation. |
| **[Weave GitOps](tools/Weave-GitOps)** | GitOps platform for continuous delivery on Kubernetes. |

## Open Source Cloud Platforms

| Tool | Description |
|------|-------------|
| **[Apache CloudStack](tools/Apache/CloudStack)** | Designed to deploy and manage large networks of virtual machines. |
| **[Apache Mesos](tools/Apache/Mesos)** | Program against your data center like it's a single pool of resources. |
| **[DC/OS](tools/DC-OS)** | Distributed operating system based on the Apache Mesos distributed systems kernel. |
| **[Eucalyptus](tools/Eucalyptus)** | Building AWS-compatible private and hybrid clouds. |
| **[LocalStack](tools/LocalStack)** | Fully functional local AWS cloud stack for development and testing. |
| **[OpenNebula](tools/OpenNebula)** | Build private clouds and manage data center virtualization based on KVM, LXD, and VMware. |
| **[OpenStack](tools/OpenStack)** | Open-source software for creating private and public clouds. |

## Operating Systems

| Tool | Description |
|------|-------------|
| **[Atomic](tools/Atomic)** | Immutable infrastructure for deploying and scaling containerized applications. |
| **[CoreOS](tools/CoreOS)** | Lightweight container host optimized for cloud-native applications. |
| **[OSv](tools/OSv)** | Versatile modular unikernel for running unmodified Linux applications securely. |
| **[Photon](tools/Photon)** | Linux container host optimized for cloud-native applications and VMware infrastructure. |
| **[Project Atomic](tools/Project-Atomic)** | Red Hat's container OS and tools. |
| **[RancherOS](tools/RancherOS)** | Containerized operating system for running containers. |
| **[Rocky Linux](tools/Rocky-Linux)** | Open-source enterprise operating system compatible with Red Hat Enterprise Linux. |
| **[Snappy Ubuntu Core](tools/Snappy-Ubuntu-Core)** | Canonical's container OS. |
| **[Ubuntu](tools/Ubuntu)** | Enterprise open-source Linux distribution. |

## Distributed Filesystems

| Tool | Description |
|------|-------------|
| **[Ceph](tools/Ceph)** | Highly scalable object, block, and file-based storage. |
| **[Gluster](tools/Gluster)** | Free and open-source scalable network filesystem. |
| **[LINBIT](tools/LINBIT)** | Create, remove, and replicate block storage devices for datacenter-scale environments. |
| **[MinIO](tools/MinIO)** | High-performance, distributed object storage system. |
| **[XtreemFS](tools/XtreemFS)** | Fault-tolerant distributed file system. |

## Internal Developer Platforms

| Tool | Description |
|------|-------------|
| **[Backstage](tools/Backstage)** | Open platform for building developer portals. |
| **[Kratix](tools/Kratix)** | Framework for platform teams to build custom platforms tailored to organizations. |
| **[Port](tools/Port)** | Platform for building no-code, holistic Internal Developer Portals. |

## Service Discovery

| Tool | Description |
|------|-------------|
| **[Doozerd](tools/Doozerd)** | Consistent distributed data store. |
| **[Serf](tools/Serf)** | Decentralized cluster membership, failure detection, and orchestration. |
| **[ZooKeeper](tools/ZooKeeper)** | Centralized service for configuration, naming, synchronization, and more. |

## Chaos Engineering

| Tool | Description |
|------|-------------|
| **[Chaos Mesh](tools/Chaos-Mesh)** | Chaos engineering platform for Kubernetes. |
| **[Chaos Monkey](tools/Chaos-Monkey)** | Resiliency tool for random instance failures. |
| **[Chaos Toolkit](tools/Chaos-Toolkit)** | Open-source platform for chaos engineering. |
| **[Litmus](tools/Litmus)** | Identify weaknesses in infrastructures. |
| **[Pumba](tools/Pumba)** | Chaos testing, network emulation, and stress testing for containers. |
| **[Toxiproxy](tools/Toxiproxy)** | Simulate network and system conditions for chaos testing. |

## API Gateway

| Tool | Description |
|------|-------------|
| **[Ambassador](tools/Ambassador)** | Kubernetes-native API gateway built on Envoy. |
| **[API Umbrella](tools/API-Umbrella)** | Proxy for APIs with management platform. |
| **[Cilium](tools/Cilium)** | API-aware networking and security using BPF and XDP. |
| **[Envoy](tools/Envoy)** | Cloud-native high-performance service proxy. |
| **[Gloo](tools/Gloo)** | Feature-rich Kubernetes-native ingress controller and API gateway. |
| **[Kong](tools/Kong)** | Connect all microservices and APIs. |
| **[Traefik](tools/Traefik)** | Reverse proxy and load balancer for HTTP and TCP. |
| **[Tyk](tools/Tyk)** | API and service management platform. |

## Code Review

| Tool | Description |
|------|-------------|
| **[CodeRabbit](tools/CodeRabbit)** | AI-powered code review tool integrated with GitHub. |
| **[Gerrit](tools/Gerrit)** | Web-based team code collaboration tool. |
| **[MeshMap](tools/MeshMap)** | Visual designer for Kubernetes and cloud-native applications. |
| **[Potpie](tools/Potpie)** | AI agent for understanding code changes and computing blast radius. |
| **[Review Board](tools/Review-Board)** | Web-based collaborative code review tool. |

## Distributed Messaging

| Tool | Description |
|------|-------------|
| **[ActiveMQ](tools/ActiveMQ)** | Multi-protocol messaging. |
| **[Beanstalkd](tools/Beanstalkd)** | Simple, fast work queue. |
| **[Celery](tools/Celery)** | Asynchronous task queue/job queue. |
| **[Dkron](tools/Dkron)** | Distributed, fault-tolerant job scheduling system. |
| **[Faktory](tools/Faktory)** | Repository for background jobs. |
| **[Kafka](tools/Kafka)** | Building real-time data pipelines and streaming apps. |
| **[KubeMQ](tools/KubeMQ)** | Kubernetes-native messaging platform. |
| **[NATS](tools/NATS)** | Simple, secure, high-performance messaging system. |
| **[NSQ](tools/NSQ)** | Realtime distributed messaging platform. |
| **[RabbitMQ](tools/RabbitMQ)** | Message broker. |
| **[RestMQ](tools/RestMQ)** | Message queue using HTTP as transport. |

## Programming Languages

| Tool | Description |
|------|-------------|
| **[Go](tools/Go)** | Open-source language for simple, reliable, efficient software. |
| **[Python](tools/Python)** | Programming language for quick integration and systems work. |
| **[Ruby](tools/Ruby)** | Dynamic language focused on simplicity and productivity. |

## Chat and ChatOps

| Tool | Description |
|------|-------------|
| **[CloudBot](tools/CloudBot)** | Simple, fast, expandable IRC bot. |
| **[Hubot](tools/Hubot)** | Customizable life embetterment robot. |
| **[Mattermost](tools/Mattermost)** | Messaging platform for secure team collaboration. |
| **[Riot](tools/Riot)** | Universal secure chat app. |
| **[Rocket.Chat](tools/Rocket.Chat)** | Open-source team communication. |
| **[Zulip](tools/Zulip)** | Real-time chat with email threading model. |

## Incident Management

| Tool | Description |
|------|-------------|
| **[OpsGenie](tools/OpsGenie)** | Incident management and alerting. |
| **[PagerDuty](tools/PagerDuty)** | Incident response and alerting. |
| **[PagerTree](tools/PagerTree)** | Incident response and alerting. |
| **[VictorOps](tools/VictorOps)** | Incident management platform. |

## Project Management

| Tool | Description |
|------|-------------|
| **[Asana](tools/Asana)** | Work management platform for teams. |
| **[Azure Boards](tools/Azure/Boards)** | Work item tracking for Azure DevOps. |
| **[Bitbucket Issues](tools/Bitbucket/Issues)** | Issue tracking for Bitbucket. |
| **[Clickup](tools/Clickup)** | All-in-one productivity platform. |
| **[GitHub Projects](tools/GitHub/Projects)** | Project management for GitHub. |
| **[GitLab Boards](tools/GitLab/Boards)** | Issue boards for GitLab. |
| **[Jira](tools/Jira)** | Issue tracking and project management. |
| **[Linear](tools/Linear)** | Issue tracking tool for software teams. |
| **[Monday.com](tools/Monday.com)** | Work management platform. |
| **[Shortcut](tools/Shortcut)** | Project management for software teams. |
| **[Taiga](tools/Taiga)** | Open-source project management platform. |
| **[Trello](tools/Trello)** | Kanban-style project management. |
| **[Wrike](tools/Wrike)** | Work management and project collaboration. |
| **[Zoho Sprints](tools/Zoho/Sprints)** | Agile project management. |

## Bug Tracking

| Tool | Description |
|------|-------------|
| **[Bugasura](tools/Bugasura)** | Bug tracking and management. |
| **[Bugsee](tools/Bugsee)** | In-app bug reporting and crash reporting. |
| **[Bugzilla](tools/Bugzilla)** | Open-source bug tracking system. |
| **[Github Issues](tools/Github/Issues)** | Issue tracking for GitHub. |
| **[Instabug](tools/Instabug)** | In-app feedback and bug reporting. |
| **[Mantis Bug Tracker](tools/Mantis-Bug-Tracker)** | Open-source bug tracking system. |
| **[Zoho BugTracker](tools/Zoho/BugTracker)** | Bug tracking and management. |

## Code Editors

| Tool | Description |
|------|-------------|
| **[Atom](tools/Atom)** | Hackable text editor for the 21st century. |
| **[Bluefish](tools/Bluefish)** | GTK+ IDE for web development. |
| **[CodeLobster](tools/CodeLobster)** | PHP, HTML, CSS, JavaScript editor. |
| **[Eclipse](tools/Eclipse)** | IDE for Java and other languages. |
| **[Eclipse Che](tools/Eclipse-Che)** | Cloud IDE. |
| **[gedit](tools/gedit)** | Text editor for GNOME. |
| **[GNU Emacs](tools/GNU-Emacs)** | Extensible, customizable text editor. |
| **[GNU Nano](tools/GNU-Nano)** | Simple command-line text editor. |
| **[IntelliJ IDEA](tools/IntelliJ-IDEA)** | IDE for Java and other JVM languages. |
| **[Neovim](tools/Neovim)** | Hyperextensible Vim-based text editor. |
| **[Notepad++](tools/Notepad++)** | Source code editor. |
| **[PyCharm](tools/PyCharm)** | IDE for Python. |
| **[Sublime Text](tools/Sublime-Text)** | Sophisticated text editor. |
| **[TextMate](tools/TextMate)** | Text editor for macOS. |
| **[UltraEdit](tools/UltraEdit)** | Text editor and hex editor. |
| **[Vim](tools/Vim)** | Highly configurable text editor. |
| **[Visual Studio Code](tools/Visual-Studio-Code)** | Code editor with built-in Git and extensions. |
| **[WebStorm](tools/WebStorm)** | IDE for web development. |

## Continuous Testing

| Tool | Description |
|------|-------------|
| **[accelQ](tools/accelQ)** | Continuous testing platform. |
| **[Apache jMeter](tools/Apache-jMeter)** | Load testing tool. |
| **[Appium](tools/Appium)** | Mobile application testing framework. |
| **[Bencher](tools/Bencher)** | Continuous benchmarking. |
| **[Cypress](tools/Cypress)** | End-to-end testing framework. |
| **[Gatling](tools/Gatling)** | Load testing tool for web applications. |
| **[IBM Rational Functional Tester](tools/IBM-Rational-Functional-Tester)** | Automated functional testing. |
| **[JUnit](tools/JUnit)** | Unit testing framework for Java. |
| **[k6](tools/k6)** | Load testing tool. |
| **[NUnit](tools/NUnit)** | Unit testing framework for .NET. |
| **[Selenium](tools/Selenium)** | Browser automation tool. |
| **[steadybit](tools/steadybit)** | Chaos engineering and testing platform. |
| **[TestComplete](tools/TestComplete)** | Automated testing tool. |
| **[TestNG](tools/TestNG)** | Testing framework for Java. |
| **[TestRail](tools/TestRail)** | Test case management. |
| **[TestSigma](tools/TestSigma)** | AI-powered test automation. |
| **[Tricentis Tosca](tools/Tricentis-Tosca)** | Model-based test automation. |
| **[Unified Functional Testing (UFT)](tools/Unified-Functional-Testing)** | Functional testing tool. |
| **[Waitr](tools/Waitr)** | Web application testing framework. |
| **[Zephyr](tools/Zephyr)** | Test management tool. |

## AI SRE Tools & SRE Copilots

| Tool | Description |
|------|-------------|
| **[Deductive.ai](tools/Deductive.ai)** | AI-powered SRE and DevOps automation. |
| **[Resolve.ai](tools/Resolve.ai)** | AI for incident resolution. |
| **[Sherlocks.ai](tools/Sherlocks.ai)** | AI SRE assistant for monitoring and alerting. |

## VPN

| Tool | Description |
|------|-------------|
| **[Algo](tools/Algo)** | Set up a personal VPN in the cloud. |
| **[Firezone](tools/Firezone)** | Self-hosted VPN server using WireGuard. |
| **[Freelan](tools/Freelan)** | Peer-to-peer secure VPN. |
| **[OpenVPN](tools/OpenVPN)** | Flexible VPN for secure data communications. |
| **[Pritunl](tools/Pritunl)** | Enterprise VPN server. |
| **[SoftEther](tools/SoftEther)** | Cross-platform VPN program. |
| **[sshuttle](tools/sshuttle)** | Transparent proxy as a poor man's VPN. |
| **[Streisand](tools/Streisand)** | Automated VPN service setup. |
| **[VyOS](tools/VyOS)** | Open-source network OS for routing and firewall. |


## Databases

| Tool | Description |
|------|-------------|
| **[Apache HBase](tools/ApacheHBase)** | Distributed, versioned, non-relational database. |
| **[Cassandra](tools/Cassandra)** | Manage massive amounts of data fast, without losing sleep. |
| **[Couchbase](tools/Couchbase)** | Distributed multi-model NoSQL document-oriented database. |
| **[CouchDB](tools/CouchDB)** | Database that completely embraces the web. |
| **[etcd](tools/etcd)** | Distributed reliable key-value store for critical data. |
| **[LevelDB](tools/LevelDB)** | Fast key-value storage library. |
| **[MariaDB](tools/MariaDB)** | Fast, scalable, and robust relational database. |
| **[MySQL](tools/MySQL)** | Open-source relational database management system. |
| **[PostgreSQL](tools/PostgreSQL)** | Powerful, open-source object-relational database. |
| **[RethinkDB](tools/RethinkDB)** | Open-source database for the real-time web. |
| **[RocksDB](tools/RocksDB)** | Embeddable, persistent key-value store for fast storage. |
| **[ScyllaDB](tools/ScyllaDB)** | NoSQL data store using the Seastar framework. |
| **[SQLite](tools/SQLite)** | Small, fast, self-contained, high-reliability SQL engine. |
| **[usql](tools/usql)** | Universal command-line interface for SQL databases. |
| **[TiDB](tools/TiDB)** | MySQL-compatible distributed SQL database designed for horizontal scalability and high availability. |
| **[TiKV](tools/TiKV)** | Distributed, highly available transactional key-value store powering TiDB’s storage layer. |

Tool | Description
---- | -----------
**[Apache HBase](tools/ApacheHBase)** | Distributed, versioned, non-relational database.
**[Cassandra](tools/Cassandra)** | Manage massive amounts of data fast, without losing sleep.
**[Couchbase](tools/Couchbase)** | Distributed multi-model NoSQL document-oriented database.
**[CouchDB](tools/CouchDB)** | Database that completely embraces the web.
**[etcd](tools/etcd)** | Distributed reliable key-value store for critical data.
**[LevelDB](tools/LevelDB)** | Fast key-value storage library.
**[MariaDB](tools/MariaDB)** | Fast, scalable, and robust relational database.
**[MySQL](tools/MySQL)** | Open-source relational database management system.
**[PostgreSQL](tools/PostgreSQL)** | Powerful, open-source object-relational database.
**[RethinkDB](tools/RethinkDB)** | Open-source database for the real-time web.
**[RocksDB](tools/RocksDB)** | Embeddable, persistent key-value store for fast storage.
**[ScyllaDB](tools/ScyllaDB)** | NoSQL data store using the Seastar framework.
**[SQLite](tools/SQLite)** | Small, fast, self-contained, high-reliability SQL engine.
**[usql](tools/usql)** | Universal command-line interface for SQL databases.
**[TiDB](tools/TiDB)** | MySQL-compatible distributed SQL database designed for horizontal scalability and high availability.
**[TiKV](tools/TiKV)** | Distributed, highly available transactional key-value store powering TiDB’s storage layer.

## Web Servers

| Tool | Description |
|------|-------------|
| **[Apache](tools/Apache)** | Web server and reverse proxy. |
| **[Caddy](tools/Caddy)** | Web server with automatic HTTPS. |
| **[Cherokee](tools/Cherokee)** | Highly concurrent secured web applications. |
| **[Lighttpd](tools/Lighttpd)** | Optimized for speed-critical environments. |
| **[Nginx](tools/Nginx)** | High-performance load balancer, web server, and reverse proxy. |
| **[uWSGI](tools/uWSGI)** | Application server container. |

## SSL

| Tool | Description |
|------|-------------|
| **[Cert Manager](tools/Cert-Manager)** | Kubernetes add-on for automating TLS certificate management. |
| **[Certbot](tools/Certbot)** | Automate using Let's Encrypt certificates on manually-managed websites. |
| **[Let's Encrypt](tools/Lets-Encrypt)** | Free, automated, and open Certificate Authority. |

## Networking Tools

| Tool | Description |
|------|-------------|
| **[dig](tools/dig/)** | DNS lookup utility for querying DNS servers. |
| **[nslookup](tools/nslookup/)** | DNS record lookup tool for troubleshooting DNS records. |
| **[tcpdump](tools/tcpdump/)** | Packet capture and low-level network traffic analysis tool. |
| **[mtr](tools/mtr/)** | Combined ping + traceroute tool for deep network diagnostics. |
| **[nmap](tools/nmap/)** | Network scanning and security auditing tool for discovering hosts & services. |

## MCP

| Tool | Description |
|------|-------------|
| **[1Panel](tools/MCP/1Panel/)** | Modern, open-source Linux server operation and management panel. |
| **[activepieces](tools/MCP/activepieces/)** | No-code workflow automation platform. |
| **[context7](tools/MCP/context7/)** | Context-aware AI assistant for developers. |
| **[fastmcp](tools/MCP/fastmcp/)** | Fast and lightweight MCP server for building AI agents. |
| **[Figma-Context-MCP](tools/MCP/Figma-Context-MCP/)** | Figma design integration for AI assistants. |
| **[genai-toolbox](tools/MCP/genai-toolbox/)** | Google Cloud GenAI toolbox for AI model access. |
| **[github-mcp-server](tools/MCP/github-mcp-server/)** | GitHub integration for AI assistants. |
| **[mindsdb](tools/MCP/mindsdb/)** | AI-powered database management and analytics. |
| **[playwright-mcp](tools/MCP/playwright-mcp/)** | Browser automation and web scraping with Playwright. |
| **[serena](tools/MCP/serena/)** | AI-powered development assistant. |

## Networking Tools
Tool | Description
---- | -----------
dig | DNS lookup utility for querying DNS servers.
nslookup | Basic DNS lookup tool for DNS records troubleshooting.
tcpdump | Packet capture and network traffic analysis tool.
mtr | Combined ping and traceroute tool for deep network diagnostics.
nmap | Network scanning and security auditing tool for discovering hosts and services.

---

## 📚 Documentation

### Repository Structure

This repository maintains a curated list of DevOps tools organized by category. Each tool entry follows a standardized structure:

```
awesome-devops/
├── README.md                 # Main repository documentation and tool listings
├── .github/
│   └── copilot-instructions.md  # AI agent instructions for automation
├── tools/                    # Tool entries organized by category
│   ├── CategoryName/
│   │   └── ToolName/
│   │       └── README.md     # Individual tool documentation
├── logos/                    # Logo management system
│   ├── README.md            # Logo system documentation
│   ├── apply_logos.py       # Logo URL replacement script
│   ├── fetch_logos.sh       # Logo downloading automation
│   └── mapping.csv          # Logo download tracking
└── scripts/                  # Automation and validation scripts
    ├── create_readmes.sh    # Template generation for new tools
    ├── update_summaries.py  # Content synchronization
    └── validate_readmes.py  # Format validation and compliance checking
```

### Tool Entry Format

Every tool follows this exact README structure:

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

### Adding a New Tool

1. **Create Directory Structure**

   ```bash
   mkdir -p tools/CategoryName/ToolName
   cd tools/CategoryName/ToolName
   ```

2. **Generate Template**

   ```bash
   # From repository root
   bash scripts/create_readmes.sh
   ```

3. **Add Logo**

   ```bash
   # Fetch from Simple Icons CDN
   bash logos/fetch_logos.sh toolname

   # Apply local logo references
   python3 logos/apply_logos.py
   ```

4. **Update Main README**
   * Add tool entry to appropriate category table
   * Ensure description matches tool README overview

5. **Validate**

   ```bash
   python3 scripts/validate_readmes.py
   ```

### Logo Management

The repository uses a comprehensive logo management system:

* **Storage**: Logos stored as `logos/toolname.svg`
* **Referencing**: `../logos/toolname.svg` (from tool directory)
* **Fetching**: `bash logos/fetch_logos.sh toolname`
* **Application**: `python3 logos/apply_logos.py` replaces external URLs
* **Validation**: Logo existence checked during README validation

### Validation & Quality Assurance

Before submitting contributions, run validation:

```bash
# Validate all READMEs
python3 scripts/validate_readmes.py

# Returns exit code 1 on validation failures
# Checks: header format, logo existence, required sections, content structure
```

### Content Synchronization

Tool descriptions in main README tables are the source of truth:

```bash
# Sync descriptions from main README to individual tool READMEs
python3 scripts/update_summaries.py
```

### Development Workflow

1. **Fork and Clone** the repository
2. **Create Feature Branch** for your changes
3. **Add/Update Tools** following the contribution guidelines
4. **Run Validation** to ensure compliance
5. **Test Changes** locally
6. **Submit Pull Request** with clear description

### Automation Scripts

| Script | Purpose | Usage |
|--------|---------|-------|
| `create_readmes.sh` | Generate standardized README templates | `bash scripts/create_readmes.sh` |
| `validate_readmes.py` | Check README format compliance | `python3 scripts/validate_readmes.py` |
| `update_summaries.py` | Sync descriptions from main README | `python3 scripts/update_summaries.py` |
| `fetch_logos.sh` | Download logos from Simple Icons | `bash logos/fetch_logos.sh toolname` |
| `apply_logos.py` | Replace external logo URLs with local paths | `python3 logos/apply_logos.py` |

### AI Agent Integration

The repository includes comprehensive instructions for AI agents in `.github/copilot-instructions.md`, covering:

* Project architecture and structure
* Critical workflows and conventions
* Naming standards and path resolution
* Common pitfalls and validation requirements
* Integration points between components

### Contributing Guidelines

* Follow the exact tool README format
* Ensure logos are available and properly referenced
* Run validation before submitting PRs
* Keep main README table descriptions synchronized
* Use PascalCase for tool directories, lowercase with hyphens for logo files
* Test all changes locally before submission

---

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This list is available under the Creative Commons Zero v1.0 Universal license.
