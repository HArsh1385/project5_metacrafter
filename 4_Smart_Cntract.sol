// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.5/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.5/contracts/access/Ownable.sol";

contract GoldLandToken is ERC20, Ownable {
    constructor(uint256 initialSupply) ERC20("GoldLand", "GLD") {
        _mint(msg.sender, initialSupply);
    }

    // Function for the owner to mint new tokens
    function mint(address recipient, uint256 amount) external onlyOwner {
        require(recipient != address(0), "Invalid address");
        require(amount > 0, "Amount must be greater than zero");
        _mint(recipient, amount);
    }

    // Function for users to burn their own tokens
    function burn(uint256 amount) external {
        require(amount > 0, "Amount must be greater than zero");
        _burn(msg.sender, amount);
    }

    // Overriding the transfer function to include additional checks
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        require(recipient != address(0), "Invalid address");
        require(amount > 0, "Amount must be greater than zero");
        return super.transfer(recipient, amount);
    }
}
