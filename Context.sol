// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {

    address private owner;

    // Constructor to initialize the token with a name and symbol
    constructor() ERC20("ARYAN", "AR") {
        owner = msg.sender;
    }

    // Modifier to restrict access to the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function!");
        _;
    }

    // Function to mint new tokens, restricted to the owner
    function mintToken(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Function to burn tokens from the caller's account
    function burnToken(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    // Override the transfer function to include additional logic if needed
    function transfer(address to, uint256 amount) public override returns (bool) {
        require(amount <= balanceOf(msg.sender), "Not enough balance to transfer!");
        _transfer(msg.sender, to, amount);
        return true;
    }
}
