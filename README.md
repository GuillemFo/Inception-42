# Inception - System Administration with Docker

## 🎯 Project Overview

**Inception** is a system administration project that dives deep into Docker containerization and infrastructure setup. You'll build a complete web application infrastructure using multiple Docker containers, learning about container orchestration, networking, and security.

> **Summary:** This document is a System Administration related exercise.

## 🐳 Project Concept

The project tagline says it all: **"ONE CONTAINER IS NOT ENOUGH - WE NEED TO GO DEEPER"**

You'll create a multi-container infrastructure running WordPress with proper separation of services, networking, and security protocols.

## ⚙️ Technical Requirements

### Infrastructure Setup
- **Must run on a Virtual Machine**
- **Docker Compose** for container orchestration
- **Custom Dockerfiles** for each service (no pre-built images except Alpine/Debian)
- **Automatic container restart** on crashes

### Mandatory Services
| Service | Description | Ports |
|---------|-------------|-------|
| **NGINX** | TLS termination (TLSv1.2/1.3 only) | 443 (only entry point) |
| **WordPress + PHP-FPM** | CMS without nginx | 9000 (internal) |
| **MariaDB** | Database without nginx | 3306 (internal) |

### Network & Storage
- **Custom Docker network** connecting all containers
- **Two volumes**: WordPress files and database
- **No host networking** or container linking allowed

## 🔧 Implementation Rules

### Container Specifications
- **Base images**: Alpine or Debian (penultimate stable version)
- **No infinite loops**: No `tail -f`, `sleep infinity`, `while true`
- **Proper daemon management**: Follow Docker best practices
- **No latest tags**: Specify exact versions

### Security Requirements
- **Environment variables** for configuration (no passwords in Dockerfiles)
- **.env file** for environment variables
- **Docker secrets** for confidential information
- **Custom domain**: `login.42.fr` pointing to local IP
- **Admin username restrictions**: Cannot contain 'admin', 'Admin', etc.
## 🎯 Learning Objectives

- **Docker containerization** and multi-service architecture
- **Docker Compose** orchestration
- **Network configuration** between containers
- **Volume management** and data persistence
- **TLS/SSL configuration** with NGINX
- **Security best practices** for containers
- **Environment variable management**
- **Virtual machine administration**
