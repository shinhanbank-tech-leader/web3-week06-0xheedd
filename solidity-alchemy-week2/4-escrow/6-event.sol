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

    event Approved(uint256 balance);

    function approve() public {
        //거래 승인하는사람이 arbiter(중재자)아니면 revert
        if(msg.sender != arbiter) revert();
        
        // 컨트랙트 잔액 로그에 기록
        uint balance = address(this).balance;
        emit Approved(balance);

        // 중재자가 승인해주면, 판매자에게 모든 잔액 전송
        (bool sent, ) = beneficiary.call{value : balance}("");
        require(sent, "approve failed");

    }

}