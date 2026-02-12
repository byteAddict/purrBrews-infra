# ☕ purrBrews Infrastructure
> **Architecture as a Service: A Zero-Friction Campus LAN for Site A & Site B.**

![Status](https://img.shields.io/badge/Status-V1_Foundations-green)
![Orchestration](https://img.shields.io/badge/Stack-Docker_|_IaC-blue)
![Security](https://img.shields.io/badge/Security-Hardened-red)

## 🎯 Executive Summary
purrBrews is a high-availability, self-hosted infrastructure project designed to solve two primary problems:
1.  **Network Intelligence:** Centralizing security and privacy across a dual-site campus LAN (Adrak's Paradise & Kaapi Station).
2.  **Mental Load Reduction:** Providing "zero-friction" interfaces for non-technical stakeholders while managing a complex multi-cat household.

---

## 🏗️ Technical Architecture
The system follows a **Service Encapsulation** pattern, separating the high-power **Core** (Silo) from the resource-constrained **Edge** (Mill/Bean).



### Hardware Inventory (The "Coffee Shop")
| Codename | Model | Role | OS / State |
| :--- | :--- | :--- | :--- |
| **Silo** | HP Pavilion (Headless) | Core Server | Debian 13 (Trixie) |
| **Mill** | Raspberry Pi 3B+ | Network Utility | RPi OS 64-bit |
| **Bean** | Pi Zero 2W | Watchdog/Edge | RPi OS 32-bit |
| **Roastery** | Legion 5 Pro | Dev Station | Windows 11 |

---

## 📂 Repository Structure (IaC)
Every service is encapsulated in its own directory with a version-controlled `docker-compose.yml`. 

```text
/opt/purrbrews-infra/
├── silo/               # High-availability Core Services (Debian 13)
│   ├── vaultwarden/    # Secret Management (P0)
│   └── homeassistant/  # IoT Logic (Hardened/Discovery Toggle)
├── mill/               # Edge Utility (Resource Optimized)
│   ├── adguard/        # DNS Gatekeeper (High Priority Tier)
│   ├── cloudflared/    # Zero-Trust Tunnel
│   └── raspotify/      # Audio Distribution
└── .github/            # Project Backlog & PM (GitHub Projects)