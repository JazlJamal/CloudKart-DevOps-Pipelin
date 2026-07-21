# 🛒 CloudKart E-Commerce DevOps CI/CD Pipeline

An automated Continuous Integration and Continuous Deployment (CI/CD) pipeline built for the **CloudKart E-Commerce Platform**. This repository demonstrates automated unit testing, containerization, and deployment health check verification using **GitHub Actions**, **Docker**, **Flask**, and **PyTest**.

---

## 📌 Table of Contents
* [Features](#-features)
* [Repository Structure](#-repository-structure)
* [Tech Stack](#-tech-stack)
* [CI/CD Pipeline Stages](#-cicd-pipeline-stages)
* [Local Development & Setup](#-local-development--setup)
* [API Endpoints](#-api-endpoints)

---

## 🚀 Features
* **Automated CI/CD Pipeline:** Fully automated workflow triggered on every `git push` or `pull_request` to `main`.
* **Zero-Downtime Quality Gates:** Automated PyTest execution halts deployment immediately if any unit test fails.
* **Containerization:** Environment standardization using Docker (`python:3.11-slim`) to eliminate "works on my machine" issues.
* **Automated Health Check:** Spins up the built Docker container during pipeline execution to verify system health before teardown.

---

## 📁 Repository Structure

```text
CloudKart-DevOps-Pipeline/
├── .github/
│   └── workflows/
│       └── devops-pipeline.yml    # GitHub Actions CI/CD Configuration
├── app.py                         # Core Flask Web Application
├── test_app.py                    # PyTest Unit Test Suite
├── Dockerfile                     # Docker Image Instructions
├── requirements.txt               # Application Dependencies
└── README.md                      # Project Documentation
