# MangoBanana IAM Modernization Project

## Company Overview
- **Company Name:** MangoBanana (MB)
- **Industry:** FinTech / Data Analytics
- **Size:** ~250 employees
- **Headquarters:** Newark, NJ
- **Environment:** Hybrid-ready, primarily on-prem identity

---

## Business Context

In early 2026, MangoBanana expanded rapidly after onboarding several financial clients. This growth introduced several Identity and Access Management (IAM) challenges:

- No standardized user provisioning process  
- Excessive privileged access within IT  
- Lack of audit visibility for compliance  
- Inconsistent access control across departments  

To address these issues, the company initiated an IAM modernization project using **Active Directory Domain Services (AD DS)** on **Windows Server 2025**.

---

## Role: IAM Administrator

### Responsibilities
- Designing identity structure  
- Implementing access controls  
- Automating provisioning  
- Improving security auditing  

---

## Environment Architecture

Due to budget constraints, the initial deployment used a **single-server lab architecture**:

- **Domain Controller:** MB01  
- **Domain:** MangoBanana.local  

### Core Services
- DNS Server  
- Group Policy  
- Active Directory Certificate Services (AD CS)  
<img width="660" height="500" alt="Screenshot (137)" src="https://github.com/user-attachments/assets/8b8be205-af51-4e3b-8d73-487920e12fe1" />

---

## IAM Implementation

### 🔹 Organizational Structure

Designed Organizational Units (OUs) aligned with business functions:

- Finance  
- HR  
- IT  
- Data Analytics  

**Outcome:**  
Enabled policy scoping and delegated administration.

---

### 🔹 IAM Lifecycle (Joiner / Mover / Leaver)

#### Joiner
- Created AD accounts using PowerShell  
- Automatically assigned department-based groups  

#### Mover
- Updated OU placement and group memberships  
- Enforced least privilege access  

#### Leaver
- Disabled accounts immediately upon termination  
- Removed group memberships and archived accounts  

---

### 🔐 RBAC Model (AGDLP)

Implemented **AGDLP-based Role-Based Access Control**:

**Examples:**
- `Finance_Users → Finance_Read_Access → Finance Shared Folder`  
- `IT_Admins → Elevated Server Privileges`  

**Outcome:**  
- Reduced direct permission assignments  
- Improved scalability and manageability  

---

### 📁 Resource Access Control

- Created secure departmental file shares (HR, Finance)  
- Applied permissions using Domain Local Groups  
- Prevented unauthorized cross-department access  

---

### 🛡️ Security & Compliance

Configured via Group Policy Management:

- Password policy (12+ characters, complexity enforced)  
- Account lockout thresholds  
- Audit logging for:
  - Logon attempts  
  - Account changes  
  - Privileged activity  

---

### 📊 Auditing & Monitoring

Configured:

- Security logs in Event Viewer  
- Tracking:
  - Failed logins  
  - Account lockouts  
  - Admin group membership changes  

**Outcome:**  
Improved compliance visibility for financial regulations.

---

### ⚡ Automation (PowerShell)

Developed scripts to:

- Bulk create users from HR input  
- Automatically assign group memberships  
- Reduce manual provisioning errors  

---

## 🚧 Challenges Faced

- Single-server architecture (no redundancy)  
- Manual HR input (no HRIS integration)  
- Over-permissioned legacy accounts  

---

## 📈 Outcomes

- Reduced onboarding time: **30 minutes → 5 minutes**  
- Improved access consistency across departments  
- Enabled audit visibility for compliance checks  
- Established a scalable IAM foundation  

---

## 💬 Interview Summary

> "In a simulated 2026 FinTech environment, I implemented an on-prem IAM system using Active Directory on Windows Server 2025.  
> I designed RBAC using the AGDLP model, automated user provisioning with PowerShell, and enforced security policies through Group Policy.  
> I also implemented lifecycle management and auditing to align with compliance requirements."

---

## 🚀 Future Improvements

### 1. High Availability
- Add second Domain Controller (DC02)  
- Enable AD replication  
- Eliminate single point of failure  

---

### 2. Backup & Disaster Recovery
- Perform System State backups  
- Test AD restore scenarios  

---

### 3. Advanced RBAC
- Refine AGDLP implementation  
- Separate admin vs user roles  

---

### 4. Privileged Access Security
- Implement LAPS for local admin passwords  
- Deploy tiered admin model (Tier 0/1/2)  

---

### 5. IAM Automation Enhancement
- Bulk provisioning from CSV  
- Automated OU and group assignment via PowerShell  

---

### 6. Hybrid Identity Integration
- Sync on-prem AD with cloud identity  
- Use Microsoft Entra Connect  

---

### 7. Federation & SSO
- Deploy ADFS  
- Enable Single Sign-On (SSO)  

---

### 8. Security Hardening & GPO Expansion
- Strengthen password and audit policies  
- Disable USB access  
- Restrict Control Panel  

---

### 9. Certificate Services (PKI)
- Issue internal certificates for users and servers  
- Enable secure authentication and encryption  

---

### 10. Monitoring & Auditing
- Centralize security logs  
- Track:
  - Logins  
  - Failures  
  - Privilege changes  

---

### 11. Attack Simulation & Detection
- Simulate brute force and password spraying attacks  
- Analyze logs and implement response strategies  

---

### 12. Documentation & Architecture
- RBAC matrix  
- IAM lifecycle diagrams  
- Network architecture diagrams  

**Outcome:**  
Elevates project to enterprise-grade documentation standards.

---
