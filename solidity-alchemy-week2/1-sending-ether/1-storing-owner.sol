// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    address public owner;

    constructor() {
        owner = msg.sender;
    }
}

/*
- msg : 전역객체
msg.data (bytes) - the complete calldata
msg.sender (address) - the address sending the message
msg.sig (bytes4) - the targeted function signature
msg.value (uint) - the amount of wei sent
*/