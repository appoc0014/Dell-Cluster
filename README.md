# 🏠 Home Lab — Kubernetes & GitOps Projects

This repository contains a collection of DevOps-focused projects built to demonstrate modern infrastructure and application deployment practices using Kubernetes, Helm, and GitOps.

The work here started with raw Kubernetes manifests and evolved into a scalable, maintainable approach using Helm charts and Flux-driven GitOps workflows — mirroring the kind of progression you'd see in a real engineering environment.

---

## 📌 What This Repo Covers

- Packaging applications with Helm
- Managing deployments with Flux CD
- Implementing GitOps workflows for continuous delivery
- Securing secrets using SOPS + Age encryption
- Deploying both stateful and stateless applications on Kubernetes
- Full observability with Prometheus and Grafana
- Automated TLS certificates via cert-manager and Let's Encrypt
- End-to-end CI/CD pipeline with GitHub Actions
- Building a structured, multi-project repository layout

---

## 📈 What It Demonstrates

This repo reflects a real-world progression from traditional sysadmin practices into modern DevOps workflows:

- Migrating applications from raw YAML to Helm-managed deployments
- Designing reusable and configurable Helm charts
- Debugging and resolving Flux reconciliation and Helm templating issues
- Managing Kubernetes resources through declarative, Git-based automation
- Applying best practices for namespace management, configuration, and security
- Instrumenting infrastructure with Prometheus ServiceMonitors and custom Grafana dashboards
- Issuing and auto-renewing TLS certificates using DNS-01 challenge via Cloudflare
- Automating Docker image builds and cluster deployments via GitHub Actions

---

## 🛠 Technologies Used

| Tool | Purpose |
|---|---|
| Kubernetes (k3s) | Container orchestration on self-hosted hardware |
| Helm | Application packaging and templating |
| Flux CD | GitOps continuous delivery |
| SOPS + Age | Secrets encryption at rest in Git |
| Docker | Containerization |
| Traefik | Ingress controller and routing |
| PostgreSQL | Relational database for stateful workloads |
| Cloudflare | DNS management and secure tunnel access |
| cert-manager | Automated TLS certificate lifecycle management |
| Let's Encrypt | Free trusted TLS certificates |
| Prometheus | Metrics collection and alerting |
| Grafana | Observability dashboards |
| GitHub Actions | CI/CD pipeline for automated image builds |

---

## 📁 Projects

| Project | Description |
|---|---|
| [`game/`](./Helm/game) | Tic-Tac-Toe web app with PostgreSQL backend, Prometheus metrics, and TLS — deployed via Helm and Flux. Live at [https://game.marcodevops.org](https://game.marcodevops.org) |
| [`singlepod/`](./Helm/singlepod) | Single nginx container serving a custom HTML page via ConfigMap volume mount, deployed with Helm |
| [`bookshelf/`](./apps/base/bookshelf) | Audiobookshelf self-hosted audiobook server with Cloudflare Tunnel ingress, managed via Kustomize |

---

## 🔄 CI/CD Pipeline

The Tic-Tac-Toe app uses a fully automated GitOps pipeline:

```
Code push to tictactoe-web repo
        ↓
GitHub Actions builds Docker image
        ↓
Image pushed to Docker Hub with commit SHA tag
        ↓
Workflow updates image tag in this repo (values.yaml)
        ↓
Flux CD detects change and deploys to k3s cluster
```

App repo: [tictactoe-web](https://github.com/appoc0014/tictactoe-web)

---

## 📊 Observability

The cluster runs a full Prometheus + Grafana monitoring stack with:

- Kubernetes cluster metrics (nodes, pods, namespaces)
- Traefik ingress request metrics via ServiceMonitor
- PostgreSQL connection and database metrics via postgres-exporter sidecar
- Custom Grafana dashboard for the game app showing memory, CPU, DB connections, and DB size

---

## 🔐 Security

- All secrets encrypted at rest using SOPS + Age before committing to Git
- Flux CD handles automatic decryption at deploy time
- TLS certificates issued by Let's Encrypt via cert-manager DNS-01 challenge
- Cloudflare API token scoped to DNS zone only

---

*Self-hosted on a k3s home lab cluster running on bare metal.*
