# Popcoin: Standardized ERC-20 Implementation

![Solidity](https://img.shields.io/badge/Solidity-0.8.24-363636?style=flat-square&logo=solidity)
![Library](https://img.shields.io/badge/Library-OpenZeppelin-4E5EE4?style=flat-square&logo=openzeppelin)
![License](https://img.shields.io/badge/License-LGPL_3.0-blue?style=flat-square)

A secure, compliant implementation of the **ERC-20 Token Standard**, engineered to serve as a composable primitive for decentralized finance (DeFi) applications.

This project prioritizes **security-by-inheritance**, utilizing battle-tested libraries to manage asset logic, ensuring immediate compatibility with wallets (MetaMask), DEXs (Uniswap), and lending protocols.

## 🏗 Architecture & Design Decisions

### 1. Security via Inheritance (OpenZeppelin)
- **Minimizing Attack Surface:** Instead of implementing raw accounting logic—which is prone to edge-case bugs—the contract inherits from **OpenZeppelin's `ERC20`**. This leverages thousands of audits and community verification for critical state changes (`transfer`, `approve`).
- **Standard Compliance:** Guarantees strict adherence to the EIP-20 specification, ensuring predictable behavior when interacting with other smart contracts.

### 2. Supply Mechanics & Precision
- **Immutable Supply:** Implements a fixed-supply model minted purely upon construction. This mirrors "Genesis" distribution patterns used in governance tokens and avoids the security risks associated with unprotected `mint` functions.
- **Decimal Precision:** explicit handling of EVM arithmetic units (`amount * 10**decimals()`) to ensure the initial supply matches the expected human-readable values without precision loss.

### 3. Modern Solidity Features
- **Version 0.8.24:** Utilizes the latest Solidity compiler to benefit from built-in overflow/underflow checks (removing the need for `SafeMath`) and PUSH0 opcode optimizations (Shangai/Cancun EVM support).

## 🛠 Tech Stack

* **Core:** Solidity `^0.8.24`
* **Libraries:** OpenZeppelin Contracts v5.x
* **Standard:** ERC-20 (Fungible Token)

## 📝 Contract Interface

The implementation exposes the standard ERC-20 interface for interoperability:

```solidity
// Core primitives available via inheritance
function transfer(address to, uint256 value) public virtual returns (bool);
function approve(address spender, uint256 value) public virtual returns (bool);
function transferFrom(address from, address to, uint256 value) public virtual returns (bool);
```

---
*An implementation of decentralized value transfer infrastructure.*
