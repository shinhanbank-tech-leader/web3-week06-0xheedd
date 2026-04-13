// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    receive() external payable {
        
    }

}

/*
- payable 키워드
이더/토큰을 받을 수 있도록 허용
- external
컨트랙트 내부에서 직접접근하지않고, 외부에서 메세지콜 호출될때 동작하도록 제어
- recieve
단순한 입금 처리. external payalbe 필요
- fallback
따로 처리할 데이터(msg.data)가 있거나, 지정된 함수 못찾았을때 예외처리 로직
*/