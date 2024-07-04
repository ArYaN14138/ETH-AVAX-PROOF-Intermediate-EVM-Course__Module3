# MyToken Smart Contract

MyToken is a simple ERC20 token implemented in Solidity. It includes basic functionalities such as minting, burning, and transfer, with ownership control.

## Overview

This smart contract, `MyToken`, is an ERC20 token named "ARYAN" with symbol "AR". It includes the following features:

- **Minting**: Only the contract owner can mint new tokens.
- **Burning**: Any token holder can burn their own tokens.
- **Transfer**: Standard ERC20 token transfer functionality with additional balance check.

## Requirements

To interact with this smart contract, you need:
- A development environment with Solidity compiler (version 0.8.0 or higher).
- Access to an Ethereum-compatible blockchain for deployment and testing.
- Optionally, OpenZeppelin library for ERC20 token standards.
- Use remix IDE for implementation(https://remix.ethereum.org).

## Installation

To deploy this contract:
1. Clone the repository or download the source code.
2. Compile the `MyToken.sol` file using Solidity compiler.
3. Deploy the compiled contract to your desired blockchain network.

## Usage

### Contract Deployment

Deploy the contract `MyToken.sol` to an Ethereum-compatible blockchain using tools like Remix, Truffle, or Hardhat.

### Interacting with the Contract

- **Mint Tokens**: Call `mintToken(address to, uint256 amount)` function to mint new tokens. Only the contract owner can call this function.
- **Burn Tokens**: Call `burnToken(uint256 amount)` function to burn tokens from your own account.
- **Transfer Tokens**: Use the standard ERC20 `transfer(address to, uint256 amount)` function to transfer tokens between addresses.

### Example

Deploy the contract, then interact with it using a wallet or through a script that interacts with the contract functions.

## Security Considerations

- Ensure the contract owner address is secured and only accessible to authorized parties.
- Test thoroughly before deploying to a mainnet environment.


## Project by :

- ARYAN 
