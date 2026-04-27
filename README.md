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
- Building a structured, multi-project repository layout

---

## 📈 What It Demonstrates

This repo reflects a real-world progression from traditional sysadmin practices into modern DevOps workflows:

- Migrating applications from raw YAML to Helm-managed deployments
- Designing reusable and configurable Helm charts
- Debugging and resolving Flux reconciliation and Helm templating issues
- Managing Kubernetes resources through declarative, Git-based automation
- Applying best practices for namespace management, configuration, and security

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
| Cloudflare | TunnelSecure external access without exposing ports |

---

## 📁 Projects

| Project | Description |
|---|---|
| [`game/`](./Helm/game) | Tic-Tac-Toe web app with PostgreSQL backend, deployed via Helm and Flux |
| [`singlepod/`](./Helm/singlepod) | Single nginx container serving a custom HTML page via ConfigMap volume mount, deployed with Helm |
| [`bookshelf/`](./apps/base/bookshelf) | Audiobookshelf self-hosted audiobook server with Cloudflare Tunnel ingress, managed via Kustomize |


---

*Self-hosted on a k3s home lab cluster.*
