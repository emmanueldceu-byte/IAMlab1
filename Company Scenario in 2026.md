Company Name: MangoBanana
Industry: FinTech / Data Analytics
Size: ~250 employees
Headquarters: Newark
Environment: Hybrid-ready, but primarily on-prem identity

Business Context

In early 2026, MangoBanana expanded rapidly after onboarding several financial clients. This created identity and access management challenges:

No standardized user provisioning process
Excessive privileged access in IT
Lack of audit visibility for compliance
Inconsistent access control across departments

To address this, the company initiated an IAM modernization project using
Active Directory Domain Services on Windows Server 2025.

Role:IAM Administrator

Responsibilities:
Designing identity structure
Implementing access controls
Automating provisioning
Improving security auditing

Environment I Built

Due to budget constraints, the initial deployment used a single-server architecture (lab simulation):

Domain Controller: MB01
Domain: MangoBanana.local
Core services:
DNS Server
Group Policy
Active Directory Certificate Services



IAM Implementation

🔹 Organizational Structure

I designed OUs aligned with business units:

Finance
HR
IT
Data Analytics

This allowed policy scoping and delegated administration.

🔹 IAM Lifecycle (Joiner / Mover / Leaver)

You implemented structured workflows:

Joiner
Created AD accounts using PowerShell
Assigned department-based groups automatically

Mover
Updated OU and group memberships when employees changed roles
Ensured access followed least privilege principle

Leaver
Disabled accounts immediately upon termination
Removed group memberships and archived accounts

🔐 RBAC Model

I implemented AGDLP-based RBAC:

Example:

Finance_Users → Finance_Read_Access → Finance shared folder
IT_Admins → Elevated privileges on servers

This reduced direct permission assignments and improved scalability.

📁 Resource Access Control
Created secure file shares (HR, Finance)
Applied permissions using Domain Local Groups
Prevented unauthorized cross-department access
🛡️ Security & Compliance

Using Group Policy Management Console, you enforced:

Password policy (12+ characters, complexity enabled)
Account lockout thresholds
Audit logging for:
Logon attempts
Account changes
Privileged activity

📊 Auditing & Monitoring

I configured:

Security logs in Event Viewer
Tracking of failed logins and lockouts
Monitoring of admin group membership changes

This helped meet basic financial compliance requirements.

⚡ Automation (PowerShell)

You developed scripts to:

Bulk create users from HR input
Assign group memberships automatically
Reduce manual provisioning errors

🚧 Challenges Faced
Single-server limitation (no redundancy)
Manual HR input (no HR system integration)
Over-permissioned legacy accounts

📈 Outcomes
Reduced onboarding time from 30 min → 5 min
Improved access consistency across departments
Enabled audit visibility for compliance checks
Established a scalable IAM foundation

Interview Comments:

“In a simulated 2026 FinTech environment, I implemented an on-prem IAM system using Active Directory on Windows Server 2025.
I designed RBAC using the AGDLP model, automated user provisioning with PowerShell, and enforced security policies through Group Policy.
I also implemented lifecycle management and auditing to align with compliance requirements.”


IAM Lab Future Improvements 
1. High Availability (Add Second Domain Controller)
Add a second VM as DC (DC02)
Enable AD replication
Removes single point of failure
👉 Improves real enterprise reliability using Active Directory Domain Services

2. Backup & Disaster Recovery
System State backups of AD
Practice restore scenarios
👉 Shows recovery readiness and fault tolerance

3. Advanced RBAC (AGDLP Refinement)
Strengthen group-based access model
Separate admin vs user roles clearly
👉 Improves security and scalability

4. Privileged Access Security
Implement LAPS for local admin passwords
Add tiered admin model (Tier 0/1/2)
👉 Reduces credential compromise risk using Windows LAPS

5. IAM Automation Enhancement
Bulk user provisioning from CSV
Auto group + OU assignment via PowerShell
👉 Demonstrates real IAM lifecycle automation

6. Hybrid Identity Integration
Sync AD with cloud identity
👉 Uses Microsoft Entra Connect
Enables on-prem + cloud login consistency

7. Federation & SSO
Deploy ADFS for single sign-on
👉 Uses Active Directory Federation Services
Simulates enterprise application authentication

8. Security Hardening & GPO Expansion
Password, lockout, and audit policies
Disable USB / restrict control panel
👉 Strengthens endpoint and identity security using Group Policy

9. Certificate Services (PKI)
Issue internal certificates for users/servers
👉 Uses Active Directory Certificate Services
Enables secure authentication and encryption

10. Monitoring & Auditing
Track logins, failures, privilege changes
Centralize security logs
👉 Builds security visibility and compliance readiness

11. Attack Simulation & Detection
Test brute force, password spraying scenarios
Analyze logs and respond
👉 Demonstrates real-world IAM security thinking

12. Documentation & Architecture Layer
RBAC matrix
IAM lifecycle flow
Network diagram
👉 Makes project enterprise-grade
