# 🔐 Identity & Assets: Ownership and ERC-20 Implementation

Continuing my journey in the **Master in Blockchain Development** at **Blockchain Accelerator Academy**, these projects focus on two critical aspects of Web3 development: **Contract Ownership** and **Token Standards**.

Coming from a **Java** environment, understanding how the EVM handles user identity (`msg.sender`) and how standard interfaces (like `ERC-20`) function is crucial for building secure decentralized applications.

## Project: Popcoin (ERC-20 Token)

**Popcoin** is a standard fungible token implementation using the industry-standard **OpenZeppelin** library.
* **Goal:** Deploy a custom cryptocurrency that is compliant with the ERC-20 standard.
* **Key Concept:** Inheritance and Libraries. Instead of reinventing the wheel, this project leverages secure, audited code (`ERC20.sol`) to handle balances, transfers, and approvals.
* **Implementation:** The contract mints an initial supply of tokens (`1000 * 10^18`) to the deployer upon construction.

## 🛠️ Stack & Tools

* **Language:** Solidity `^0.8.24`
* **Libraries:** OpenZeppelin Contracts
* **Concepts:** `msg.sender`, Inheritance, Constructors, ERC-20 Standard.

---

*This project represents the building blocks for authentication and economy design in my Web3 portfolio.*
