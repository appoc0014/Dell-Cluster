# 🚀 DevOps GitOps Project

## 🚀 Project Overview

This repository contains a set of **DevOps-focused projects** built to demonstrate modern infrastructure and application deployment practices using **Kubernetes, Helm, and GitOps with FluxCD**.

The work in this repo started with deploying applications using raw Kubernetes manifests and evolved into a more scalable and maintainable approach using **Helm charts** and **Flux-based GitOps workflows**.

---

## 🏗️ Architecture

```mermaid
flowchart TD

    A[Developer Pushes Code] --> B[Git Repository]

    B --> C[FluxCD GitRepository]
    C --> D[HelmRelease]

    D --> E[Kubernetes Cluster]

    E --> F[Ingress Controller (Traefik)]
    F --> G[Service (ClusterIP)]
    G --> H[Game Web Deployment]

    H --> I[PostgreSQL Deployment]
    I --> J[Persistent Volume Claim]

    C --> K[SOPS Decryption]
    K --> E
```

---

## 🧠 What This Repository Demonstrates

- Helm-based application packaging
- FluxCD GitOps workflows
- Kubernetes deployments (stateful + stateless)
- Secure secret management using SOPS + age
- Migration from raw manifests to Helm

---

## 🛠️ Technologies Used

- Kubernetes
- Helm
- FluxCD
- SOPS + age
- Docker
- Traefik Ingress
- PostgreSQL

---

## 📈 Purpose

The goal of this repository is to build hands-on experience with tools and patterns commonly used in modern DevOps environments while creating production-style deployments.
