// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    address public owner;

    constructor() {
        // 컨트랙트 배포한사람을 owner로 저장
        owner = msg.sender;
    }

    receive() external payable {
        //Contract가 이더받을 수 있도록 recieve 구현
    }

    function tip() public payable {
        // tip함수 호출하여 컨트랙트에 들어온 이더를 owner계정으로 보냄
        (bool sent, ) = owner.call{value: msg.value}("");
        require(sent, "Tip to owner failed");    
    }

}