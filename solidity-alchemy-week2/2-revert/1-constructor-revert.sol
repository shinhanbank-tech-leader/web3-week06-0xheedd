// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    constructor() payable {
        // 최소예치금 1ETH
        require(msg.value >= 1 ether, "Deposit must be at least 1 ETH");
    }
}