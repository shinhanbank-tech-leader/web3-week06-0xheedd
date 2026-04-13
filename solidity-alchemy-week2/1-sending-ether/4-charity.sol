// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    address public owner;
    address public charity;

    constructor(address _charity) {
        owner = msg.sender; // 컨트랙트 배포한사람을 owner로 저장
        charity = _charity; // 생성자 인자로 charity 주소 저장
    }

    receive() external payable {
        // contract가 이더받기 위함
    }

    function tip() public payable { //이더 받으러니까 payable
        // tip함수 호출하여 컨트랙트에 들어온 이더를 owner계정으로 보냄
        (bool sent, ) = owner.call{value: msg.value}("");
        require(sent, "Tip to owner failed");    
    }

    function donate() public { //이더 받는건 아니고 보내기만 해서 non-payable
        // donate함수 호출하여 컨트랙트(this)의 모든 이더를 charity 계정으로 보냄
        (bool sent, ) = charity.call{value: address(this).balance}("");
        require(sent, "Donate to charity failed");
    }

}

/*
- this : 컨트랙트 자신을 가리킴
- address(this).balacne : 컨트랜트가 보유한 이더 양
*/