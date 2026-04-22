# IAMlab1
Project 1: On-Prem Enterprise Identity &amp; Access Management System
# On-Prem Enterprise IAM System (Windows Server 2025)

## Overview

This project simulates a real-world enterprise Identity and Access Management (IAM) system using Active Directory on Windows Server 2025 Datacenter.

It demonstrates how organizations manage user identities, roles, and access without relying on cloud services.

## Features

* Active Directory domain design with Organizational Units (OUs)
* Automated user provisioning via PowerShell
* Role-Based Access Control (RBAC)
* Joiner-Mover-Leaver lifecycle automation
* NTFS-based file access control
* Security auditing and log analysis

## Architecture

* Single Windows Server 2025 VM
* Active Directory Domain Services (AD DS)
* File Server role
* PowerShell automation scripts

## Skills Demonstrated

* AD DS administration
* IAM lifecycle management
* RBAC design
* PowerShell scripting
* Security auditing

## Setup

1. Install AD DS and promote to Domain Controller
2. Create OU and group structure
3. Configure shared folders and permissions
4. Run provisioning scripts
5. Enable auditing policies

## Demo Scenarios

* New employee onboarding
* Department transfer (HR → Finance)
* Employee termination and access removal

## Future Improvements

* Add MFA via third-party tools
* Integrate with LDAP-based applications
* Expand to multi-domain environment

## Author

Emmanuel IAM Portfolio Project
