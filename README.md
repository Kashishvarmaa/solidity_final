# MyToken

MyToken is a simple Solidity smart contract that demonstrates the basic functionality of token management. This contract allows users to **mint** and **burn** tokens, adjusting their balance accordingly. It serves as a great starting point for those new to Solidity and Ethereum smart contract development.

## Description

This Solidity contract is written for the Ethereum blockchain and includes:
- A function to **mint** tokens (increase balance).
- A function to **burn** tokens (decrease balance).
- A simple balance management system.

This project serves as an introduction to Solidity programming and can be used as a foundation for more advanced smart contract development.

## Getting Started

### Requirements
To execute this contract, you'll need:
- A Solidity-compatible development environment (e.g., **Remix**).
- Solidity compiler version **0.8.10** or higher.

### Execution Steps

1. **Open Remix IDE**
   - Visit [Remix Ethereum IDE](https://remix.ethereum.org/).

2. **Create a New File**
   - Click on the `+` icon in the left sidebar.
   - Name the file `MyToken.sol`.
   - Copy and paste the following Solidity code into the file:

   ```solidity
   // SPDX-License-Identifier: MIT
   pragma solidity ^0.8.10;

   contract MyToken {
       uint256 public balance;

       function mint(uint256 amount) public {
           balance += amount;
       }

       function burn(uint256 amount) public {
           require(balance >= amount, "Insufficient balance");
           balance -= amount;
       }
   }
   ```

3. **Compile the Contract**
   - Navigate to the **Solidity Compiler** tab in Remix.
   - Select **0.8.10** as the compiler version.
   - Click **Compile MyToken.sol**.

4. **Deploy the Contract**
   - Go to the **Deploy & Run Transactions** tab.
   - Select `MyToken` from the contract dropdown menu.
   - Click **Deploy**.

5. **Interact with the Contract**
   - Once deployed, expand the `MyToken` contract in Remix.
   - Use the `mint` function to add tokens to your balance:
     ```solidity
     mint(100);
     ```
   - Use the `burn` function to reduce your balance:
     ```solidity
     burn(50);
     ```
   - The balance updates accordingly.

## Author

**Kashish Varma**  
Email: [kashishvarmaa@gmail.com](mailto:kashishvarmaa@gmail.com)

## License

This project is licensed under the **MIT License**.
