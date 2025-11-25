# 🔐 Identity & Assets: Secure ERC-20 Implementation

A reference implementation of the ERC-20 token standard using OpenZeppelin libraries, focusing on secure asset architecture and contract ownership patterns.

## 🚀 Engineering Context

As a **Java Software Engineer**, creating a "currency" or "point system" usually involves creating a centralized database table (e.g., `UserBalances`) and writing SQL transactions to update values.

In **Solidity**, assets are standardized programmable interfaces. This project explores the transition from centralized ledgers to the **ERC-20 Standard**, leveraging established industry libraries to ensure security, interoperability, and efficient access control (Ownership).

## 💡 Project Overview

**Popcoin** is a fully compliant fungible token implementation. Rather than reinventing the wheel with custom ledger logic, this project utilizes **OpenZeppelin's** battle-tested contracts to handle the low-level arithmetic and storage management of digital assets.

### 🔍 Key Technical Features:

* **Standardization & Interoperability:**
    * **ERC-20 Protocol:** Implemented the full ERC-20 interface, ensuring the token is instantly compatible with wallets (Metamask), exchanges (DEXs), and DeFi protocols without custom integration logic.

* **Security via Inheritance:**
    * **Architecture Decision:** Instead of writing raw accounting logic (which is prone to overflow/underflow bugs), I leveraged Solidity's inheritance model to extend OpenZeppelin's `ERC20.sol`.
    * **Benefit:** This significantly reduces the attack surface by relying on audited code for critical functions like `transfer`, `approve`, and `transferFrom`.

* **Supply Management:**
    * Implemented a fixed initial supply mechanism (`_mint`) within the constructor, allocating `1000 * 10^18` units to the deployer. This mirrors the "Genesis Block" distribution pattern common in Layer 1 networks.

## 🛠️ Stack & Tools

* **Language:** Solidity `^0.8.24`.
* **Libraries:** OpenZeppelin Contracts (ERC20).
* **Concepts:** Inheritance, Asset Standards, Ownership Primitives.

---

*This project serves as a foundational component for decentralized economy design.*