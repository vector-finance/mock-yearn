// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract CatToken is ERC20("Cat Token", "CAT") {

    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) public override(ERC20) returns (bool) {
        uint256 _allowance = super.allowance(from, msg.sender);
        if (_allowance != type(uint256).max) {
            _approve(from, _msgSender(), _allowance - amount);
        }
        _transfer(from, to, amount);
        return true;
    }

    function mint(uint256 amount) external {
        _mint(msg.sender, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}