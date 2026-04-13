// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    address deployer;

    constructor() payable {
        // 최소예치금 1ETH
        require(msg.value >= 1 ether, "Deposit must be at least 1 ETH");
        deployer = msg.sender;
    }

    function withdraw() public {
        // 컨트랙트 배포자와 withdraw호출한 계정이 다르면 트랜잭션 중단
        if(deployer != msg.sender) revert();

        // 컨트랙트의 잔액 배포자에게 모두 전송
        uint256 balance = address(this).balance;
        (bool sent, ) = deployer.call{value : balance}("");
    }
}