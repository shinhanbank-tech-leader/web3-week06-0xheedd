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
        //거래 승인하는사람이 arbiter(중재자)아니면 revert
        if(msg.sender != arbiter) revert();

        uint balance = address(this).balance;
        (bool sent, ) = beneficiary.call{value : balance}("");
        require(sent, "approve failed");
    }
}

/*
revert  : 직접 명시해서 트랜잭션 취소
require : false면 에러메세지 던지고 트랜잭션 취소
 */