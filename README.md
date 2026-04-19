Project Overview

This repository contains a set of DevOps-focused projects built to demonstrate modern infrastructure and application deployment practices using Kubernetes, Helm, and GitOps with FluxCD.

The work in this repo started with deploying applications using raw Kubernetes manifests and evolved into a more scalable and maintainable approach using Helm charts and Flux-based GitOps workflows.

Key areas covered include:

Packaging applications with Helm
Managing deployments using FluxCD
Implementing GitOps workflows for continuous delivery
Securing secrets using SOPS + age encryption
Deploying stateful and stateless applications on Kubernetes
Building a structured, multi-environment repository layout


What This Repository Demonstrates

This project reflects a real-world progression from traditional system administration practices into modern DevOps workflows:

Migrating applications from raw YAML to Helm-managed deployments
Designing reusable and configurable Helm charts
Debugging and resolving Flux reconciliation and Helm templating issues
Managing Kubernetes resources through declarative Git-based automation
Applying best practices for namespace management, configuration, and security

Technologies Used
Kubernetes
Helm
FluxCD (GitOps)
SOPS + age (Secrets Encryption)
Docker
Traefik Ingress
PostgreSQL
