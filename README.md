# GoldLand Token (GLD)

## Overview
GoldLand Token (GLD) is an ERC20 token deployed on the Ethereum blockchain. It utilizes the OpenZeppelin library for ERC20 implementation and includes additional functionalities for minting and burning tokens.

## Features
- **Name:** GoldLand Token
- **Symbol:** GLD
- **Decimals:** 18
- **Total Supply:** Customizable at deployment

## Contracts

### GoldLandToken.sol
GoldLandToken.sol is the main contract that defines the GoldLand Token. It extends ERC20 and includes additional functionalities such as token minting and burning.

### Functions
- **constructor(uint256 initialSupply):** Initializes the token with an initial supply and assigns the entire supply to the deployer's address.
- **mint(address recipient, uint256 amount):** Allows the owner to mint new tokens and assign them to a specified address.
- **burn(uint256 amount):** Allows any token holder to burn a specific amount of their own tokens.
- **transfer(address recipient, uint256 amount):** Overrides the transfer function from ERC20 to include additional validations.

### Dependencies
This project relies on OpenZeppelin's contracts for ERC20 and Ownable functionalities:
- **ERC20:** OpenZeppelin ERC20.sol
- **Ownable:** OpenZeppelin Ownable.sol

## Getting Started
To deploy your own instance of GoldLand Token, follow these steps:

1. **Open Remix IDE** and create a new `.sol` file.
2. **Set the compiler version** to `0.8.17+` and compile the code.
3. **Change the environment** to `Remix VM (London)` and set the initial supply as `1000000000000000000000000` tokens (which is 1 million tokens with 18 decimals).
4. **Deploy the contract**.

## Usage
### Deploying the Token
Deploy the `GoldLandToken` contract, specifying the initial supply in the constructor.

### Interacting with the Token
Use any Ethereum wallet or interface (such as MetaMask or Remix) to:
- **View your balance** of GLD tokens.
- **Transfer tokens** to other addresses.
- **Mint new tokens** if you are the owner.
- **Burn your own tokens**.

### Example Interactions
After deploying the contract:
1. **Minting Tokens:**
   ```solidity
   GoldLandToken.mint("0xRecipientAddress", 1000);
   ```
2. **Transferring Tokens:**
   ```solidity
   GoldLandToken.transfer("0xRecipientAddress", 1000);
   ```
3. **Burning Tokens:**
   ```solidity
   GoldLandToken.burn(500);
   ```
4. **Checking Balance:**
   ```solidity
   GoldLandToken.balanceOf("0xYourAddress");
   ```
