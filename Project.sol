// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13; // Specifies MIT license and Solidity compiler version

import "ERC20.sol"; // Imports ERC20 token standard from ERC20.sol

contract Mtoken is ERC20 { // Defines Mtoken contract inheriting from ERC20
    address public owner; // Public variable to store contract owner's address
    
    modifier onlyOwner { // Modifier to restrict access to owner-only
        require(msg.sender == owner, "Only owner can call this function");
        _; // Placeholder for the function body where the modifier is used
    }
    
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        owner = msg.sender; // Sets deployer's address as the owner
        // Mint 100 tokens to the deployer
        _mint(msg.sender, 100 * (10 ** uint256(decimals())));
    }
    
    function transferTokens(address recipient, uint256 amount) external {
        _transfer(msg.sender, recipient, amount); // Transfers tokens from sender to recipient
    }
    
    function burnTokens(uint256 amount) external {
        burn(msg.sender, amount); // Incorrect syntax; typically should be _burn to destroy tokens
    }
}
