# BitLand Token (BITL)

## Overview

BitLand Token (BITL) is an ERC20 token designed for deployment on the Ethereum blockchain. It leverages the OpenZeppelin library to ensure robust ERC20 compliance while adding functionalities for minting and burning tokens.

## Features

- **Name**: BitLand Token
- **Symbol**: BITL
- **Decimals**: 18
- **Total Supply**: Customizable during deployment

## Contracts

### BitLandToken.sol

This contract implements the BitLand Token. It extends the standard ERC20 contract and includes additional functionalities for token minting and burning.

## Functions

- **constructor(uint256 initialBalance)**: Sets up the token with an initial supply, assigning the total amount to the deployer's address.

- **mint(address to, uint256 amount)**: Allows the contract owner to mint new tokens and allocate them to a specified address.

- **burn(uint256 amount)**: Enables any token holder to burn a specified amount of their tokens.

- **transfer(address recipient, uint256 amount)**: Overrides the default ERC20 transfer function to include extra validation checks.

## Dependencies

The project depends on OpenZeppelin's contracts for ERC20 and Ownable functionalities:

- **ERC20**: [OpenZeppelin ERC20.sol](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.5/contracts/token/ERC20/ERC20.sol)
- **Ownable**: [OpenZeppelin Ownable.sol](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.5/contracts/access/Ownable.sol)

## Getting Started

### Deployment

1. Open Remix IDE and create a new `.sol` file.
2. Set the compiler version to `0.8.17+` and compile the contract code.
3. Switch the environment to Remix VM (London).
4. Provide an initial supply (e.g., `1000000000000000000000000` tokens, which equals 1 million tokens with 18 decimals) and deploy the contract.

### Interacting with the Token

After deployment, you can interact with your token using Remix or an Ethereum wallet such as MetaMask. The available functions are:

- **mint(address to, uint256 amount)**: Mint tokens to a specified address (owner only).
- **transfer(address recipient, uint256 amount)**: Transfer tokens to another address.
- **burn(uint256 amount)**: Burn a specified amount of your own tokens.
- **balanceOf(address account)**: Check the token balance of a specific address.

## Example Interactions

- **Mint Tokens**:
  ```solidity
  BitLandToken.mint("0xRecipientAddress", 1000);
  ```

- **Transfer Tokens**:
  ```solidity
  BitLandToken.transfer("0xRecipientAddress", 1000);
  ```

- **Burn Tokens**:
  ```solidity
  BitLandToken.burn(500);
  ```

- **Check Balance**:
  ```solidity
  BitLandToken.balanceOf("0xYourAddress");
  ```
