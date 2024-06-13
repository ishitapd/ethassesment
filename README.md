# ethassesment
MyToken Smart Contract
Overview

MyToken is a basic ERC20-like smart contract in Solidity for creating and managing a custom token named META with the symbol MTA. It includes functionalities to mint new tokens and burn existing ones.
Features

    Mint Tokens: Increase total supply and allocate to an address.
    Burn Tokens: Decrease total supply and reduce from an address's balance.

Contract Details

    Name: META
    Symbol: MTA
    Total Supply: Tracked and adjustable via minting and burning.
    Balances: Managed through an address-to-balance mapping.

Usage
Deployment

    Use a Solidity compiler (^0.8.18) and an Ethereum environment (e.g., Remix IDE).

    Deploy the contract using the code:

    solidity

    // SPDX-License-Identifier: MIT
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

Interacting

    Mint: mint(address _to, uint _amount) - Increases _to's balance by _amount.
    Burn: burn(address _from, uint _amount) - Decreases _from's balance by _amount.

Example

    Mint 100 tokens: mint(0x123...456, 100)
    Burn 50 tokens: burn(0x123...456, 50)
