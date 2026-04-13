// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

/*
    todo 1 : PayableConstructor 컨트랙트 생성 후 빈 constructor 생성 및 payable 키워드 작성
    todo 2 : 인자로 받은 address의 ETH 잔액을 리턴하는 getBalance() 함수 생성 및 PayableConstructor 컨트랙트의 잔액 확인

    -- 추가정보 --
    1. 컨트랙트의 constructor()가 payable이면 배포 시 해당 컨트랙트로 ETH 전송 가능
*/

contract PayableConstructor {
    // todo 1
    constructor() /* 키워드 작성 */ {

    }
    
    // todo 2
    function getBalance(address _to) public view returns (uint256) {
        return _to.balance;
    }
}