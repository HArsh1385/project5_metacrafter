//For this project, you will write a smart contract to create your own ERC20 token
//Only contract owner should be able to mint tokens
//Any user can transfer tokens
//Any user can burn tokens
// contract/bitLand.sol
//SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.5/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.5/contracts/access/Ownable.sol";
contract BitLandToken is ERC20, Ownable {
    constructor(uint256 initialBalance) ERC20("BitLand", "BITL") {
        _mint(msg.sender, initialBalance);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        require(to != address(0), "ERC20: mint to the zero address");
        require(amount > 0, "ERC20: mint amount must be greater than zero");
        _mint(to, amount);
    }

    function burn(uint256 amount) public {
         require(amount > 0, "ERC20: burn amount must be greater than zero");
        _burn(msg.sender, amount);
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        require(recipient != address(0), "ERC20: transfer to the zero address");
        require(amount > 0, "ERC20: transfer amount must be greater than zero");
        return super.transfer(recipient, amount);
    }

}
