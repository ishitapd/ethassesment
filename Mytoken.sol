//// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {
    string public tokenName = "META";
    string public tokenSymbol = "MTA";
    uint public totalSupply = 0;
    mapping(address => uint) public balances;

    function mint(address _to, uint _amount) external {
        totalSupply += _amount;
        balances[_to] += _amount;
    }

    function burn(address _from, uint _amount) external {
        require(balances[_from] >= _amount, "Insufficient balance to burn");
        totalSupply -= _amount;
        balances[_from] -= _amount;
    }
}
