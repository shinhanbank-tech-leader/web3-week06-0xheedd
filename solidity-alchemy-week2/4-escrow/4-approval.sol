// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Escrow {
    address public depositor;       // 구매자
    address public beneficiary ;    // 판매자
    address public arbiter;         // 중재자
    bool public isApproved;

    constructor (address _arbiter, address _beneficiary) payable {
        arbiter = _arbiter;
        beneficiary = _beneficiary;
        depositor = msg.sender;
    }

    function approve() public {
        (bool sent, ) = beneficiary.call{value : address(this).balance}("");
        require(sent, "approve failed");
    }
}