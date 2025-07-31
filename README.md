# 🛡️ CISSP Technical Memos (🇬🇧/🇫🇷)

## Pourquoi CISSP ? (point de vue personnel)

🗣️ FRANÇAIS
Pour moi, la certification CISSP n’est pas seulement un ensemble de concepts à apprendre domaine par domaine, mais un cadre de pensée global. Elle vise à atteindre une vision d’ensemble de la cybersécurité — stratégique, opérationnelle et humaine.

Comprendre la sécurité, ce n’est pas juste maîtriser les contrôles dans un domaine spécifique, mais intégrer tous les domaines dans des situations réelles : protéger les actifs, anticiper les risques, accompagner les équipes, automatiser les opérations, renforcer l'architecture, tout en gardant une vue orientée business.

Ce dépôt est ma façon de structurer, synthétiser et ancrer ces concepts pour les réutiliser concrètement dans mes pratiques professionnelles.

🗣️ ENGLISH
To me, the CISSP is not just a domain-by-domain checklist — it’s a way of thinking holistically about security. It aims to build a wide-reaching mindset that blends strategic, operational, and human aspects of cybersecurity.

True security understanding comes from connecting all domains into real-world applications: securing assets, anticipating risks, guiding teams, automating operations, strengthening architectures — all while aligning with business goals.

This repository is my way to organize, digest, and internalize key concepts to make them actionable in real-world situations.

Ce dépôt contient mes mémos de révision personnels pour la certification CISSP. En construction continue./This repository contains my personal review memos for the CISSP certification. In continuous construction.

It's important to understand all the concepts

This repository contains structured cybersecurity notes organized by CISSP domains, following the official ISC² CBK (Common Body of Knowledge).

Each memo is bilingual (English / French) and focuses on high-yield topics and exam strategies.

---

## 📘 Domain 1 – Security & Risk Management

- [D1.1 – Laws and Regulations](memos/D1.1_Laws-and-Regulations.md)
- [D1.2 – Frameworks and Standards](memos/D1.2_Frameworks-and-Standards.md)
- [D1.3 – ISC² Code of Ethics](memos/D1.3_ISC2-Code-of-Ethics.md)
- [D1.5 – Threat Modeling (STRIDE, PASTA, VAST, DREAD)](memos/D1.5_Threat-Modeling.md)
- [D1.6 – Risk Acceptance and Treatment (RTO, RPO, MTD)](memos/D1.6_Risk-Acceptance-and-Treatment.md)
- [D1.7 – Security Control Types & Functions](memos/D1.7_Security-Control-Types.md)
- [D1.8 - Risk Assessment types](memos/D1.8_Risk-Assessment-Types.md)

## 🔐 Domain 2 – Asset Security

- Classification & Labeling of Data / Classification et étiquetage des données
- Data Lifecycle (Rest / Motion / Use) / Cycle de vie des données
- Data Roles: Owner, Custodian, Processor
- Data Remanence & Sanitization (Erasing, Clearing)
- Security Baselines (NIST SP 800-53)
- Data Minimization / Minimisation des données

## 🛠️ Domain 3 – Security Architecture and Engineering

- [D3.1 – Security Models (Bell–LaPadula, Biba, Clark–Wilson...)](memos/D3.1_Security-Models.md)
- [D3.2 – Cryptography (Symmetric, Asymmetric, Hashing, PKI)](memos/D3.2_Cryptography.md)
- Digital Signatures & PKI (X.509, CA)
- TCB, Security Perimeter & Reference Monitor
- Certification vs Accreditation
- Modes CPU (User vs Privileged)
- Aggregation vs Inference Attacks
- Secure Protocols (TLS, IPsec)

## 🌐 Domain 4 – Network Security

- OSI Layers & Network Devices
- Common Protocols (Ports: 20–443)
- Network Segmentation (VLANs, Firewalls, DMZ)
- Wireless Security (WPA2 vs WEP)
- VPN & IPsec (AH, ESP)
- Cloud Models (SaaS, PaaS, IaaS)
- Cloud Types (Public, Private, Hybrid, Community)

## 👤 Domain 5 – Identity and Access Management

- Identification, Authentication, Authorization
- Authentication Factors (MFA: Knowledge, Possession, Biometric)
- Access Control Types (DAC, MAC, RBAC)
- SSO & Kerberos Flow
- Access Control Models (ACLs, Implicit Deny)
- RADIUS, TACACS+
- Password Attacks (Brute Force, Rainbow Table)
- Biometrics (CER, FAR, FRR)

## 🧪 Domain 6 – Security Assessment and Testing

- Security Testing vs Assessments vs Audits
- Types of Audits (Internal, External, Third-party)
- SSAE 16: Type I vs Type II
- Vulnerability Assessment: CVE, CVSS, SCAP
- Penetration Testing: Planning to Reporting
- Code Review (Fagan), Static vs Dynamic, Fuzzing
- Test Coverage (Branch, Condition, Loop)
- Misuse Case, Interface Testing

## 🔄 Domain 7 – Security Operations

- Digital Forensics & Evidence Types
- Chain of Custody
- Incident Response Lifecycle
- Disaster Recovery: Cold, Warm, Hot Sites
- Backup Types: Full, Incremental, Differential
- DRP Testing: Tabletop, Walkthrough, Simulation…
- Fire Suppression (Class A-D, wet/dry pipes)
- Environmental Issues (Spike, Surge, Sag, Noise)
- Operational Controls: IDS/IPS, SIEM, Sandboxes, Honeypots

## 💻 Domain 8 – Software Development Security

- SDLC Models: Waterfall vs Agile vs Spiral
- Secure Coding Practices (Input Validation, Least Privilege)
- Software Testing: Static / Dynamic / White / Black Box
- OWASP Top 10 Vulnerabilities (XSS, SQLi, etc.)
- Software Assurance & Change Management
- Threat Modeling in Development
- Deployment Hardening & Patch Management
