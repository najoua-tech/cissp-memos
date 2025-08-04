# 🛠️ Domain 3 – Security Architecture and Engineering

---

## 🔹 D3.1 – Security Models

- **Bell–LaPadula**: Focuses on **confidentiality**

  - Simple Security: _No Read Up_
  - Star Property (_-property_): _No Write Down_

- **Biba**: Focuses on **integrity**

  - Simple Integrity: _No Read Down_
  - Star Integrity: _No Write Up_

- **Clark–Wilson**:

  - Uses _well-formed transactions_ and _separation of duties_
  - Enforces integrity via _certification rules_ and _enforcement rules_

- **Brewer–Nash** (_“Cognitive Wall”_):
  - Enforces dynamic access control based on user’s previous access

---

## 🔹 D3.2 – Cryptography

### 🔐 Asymmetric Cryptography – Confidentiality vs Authenticity

| Goal                | Encryption Key             | Decryption Key              | Purpose                     |
| ------------------- | -------------------------- | --------------------------- | --------------------------- |
| **Confidentiality** | Recipient’s **public key** | Recipient’s **private key** | Only the recipient can read |
| **Authenticity**    | Sender’s **private key**   | Sender’s **public key**     | Confirms sender’s identity  |

### ✍️ Digital Signatures & PKI

- Uses **asymmetric key pairs**
- Digital certificates (X.509) signed by **Certificate Authorities (CAs)**
- Provides:
  - **Authentication**
  - **Integrity**

### 🔄 IPsec Components

#### 🔐 IPsec – Overview

**IPsec (Internet Protocol Security)** is a suite of protocols used to secure IP communications by authenticating and encrypting each IP packet in a communication session.

#### 🔁 IPsec Modes

| Mode          | Description                                                                       | Use Case                  |
| ------------- | --------------------------------------------------------------------------------- | ------------------------- |
| **Transport** | Encrypts **only the payload** (not the IP header)                                 | Host-to-host, end-to-end  |
| **Tunnel**    | Encrypts the **entire packet (header + payload)** and wraps it in a new IP packet | Gateway-to-gateway (VPNs) |

- 🔐 **Tunnel mode** is most common in **VPNs**, providing full-packet protection.
- 📦 **Transport mode** is often used in **end-to-end connections** where both ends support IPsec.

| Component  | Primary Role                                          | Confidentiality? |
| ---------- | ----------------------------------------------------- | ---------------- |
| **AH**     | Header integrity & authentication                     | ❌ No            |
| **ESP**    | 🔐 Payload confidentiality, integrity, authentication | ✅ Yes           |
| **IKE**    | Key exchange negotiation                              | ❌ No            |
| **ISAKMP** | Key mgmt framework for security associations          | ❌ No            |

### 🧠 Key Concepts:

- **Security Association (SA)**: A one-way logical connection with defined parameters (algorithms, keys).
- **IKE** is responsible for setting up SAs between hosts.
- IPsec uses **ESP or AH** (or both), depending on the required protection.

🔐 **ESP** is preferred in most real-world scenarios because it offers **confidentiality + integrity**.

### 🧪 Hashing vs HMAC

| Function | Requires Key? | Purpose                    |
| -------- | ------------- | -------------------------- |
| **Hash** | ❌ No         | Basic integrity            |
| **HMAC** | ✅ Yes        | Integrity + Authentication |

### 🗝️ m-of-n Key Recovery (Key Escrow)

- **m of n control**: At least m out of n key holders are needed to recover a key
- Example: m = 4, n = 8 → **4 required**
- Based on **Shamir's Secret Sharing**
- Supports secure recovery and resiliency

---

## 🔹 D3.3 – Architecture & Systems

### TCB, Security Perimeter, Reference Monitor

- **TCB**: Totality of protection mechanisms in a system
- **Security Perimeter**: Boundary around the TCB
- **Reference Monitor**: Enforces access control and must be:
  - Tamperproof
  - Always invoked
  - Verifiable

### CPU Modes

- **User Mode**: Restricted, cannot access hardware directly
- **Privileged Mode**: Full system access, kernel-level

### Assurance vs Verification vs Trust

| Concept          | Definition                                          |
| ---------------- | --------------------------------------------------- |
| **Assurance**    | Measurable confidence in the control implementation |
| **Trust**        | Subjective belief                                   |
| **Verification** | Objective evaluation/test of effectiveness          |

### Certification vs Accreditation

- **Certification**: Technical evaluation of controls
- **Accreditation**: Formal approval to operate (ATO)

### 🛑 Maintenance Hooks

- Developer "shortcuts" left in code (aka **backdoors**)
- Risk: If left in production, creates serious vulnerabilities
- Example:
  ```python
  if user == "dev_admin":
      return "Access granted"
  ```
