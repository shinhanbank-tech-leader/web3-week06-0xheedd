// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

/*
    todo 1 : SendETH 컨트랙트 생성 및 call을 이용하여 ETH를 전송하는 함수 생성
    todo 2 : 인자로 받은 address의 ETH 잔액을 리턴하는 getBalance() 함수 생성 및 1번의 ETH 전송 후 잔액 확인

    -- 추가정보 --
    1. msg        : 현재 트랜잭션에 대한 정보를 담고 있는 전역 객체
    2. mag.sender : 함수를 호출한 지갑 또는 컨트랙트 주소 (스마트컨트랙을 사용하는 하는 주체)
    3. mag.value  : 함수를 호출할 때 같이 보낸 ETH 양
    4. 주소.balance는 해당 특정 주소의 현재 갖고있는  이더의 잔액을 나타 냅니다. (msg.value는 송금액) 
    5. 1 ETH = 1000000000 gwei = 1000000000000000000 wei
*/

contract SendETH {
    // todo 1
    function sendETH(address /* 키워드 작성 */ _to) public /* 키워드 작성 */ returns (string memory) {
        
        // if (sent) { return "SendETH Success"; }
        // else { return "SendETH Failure"; }
    }

    // todo 2
    function getBalance(address _to) public view returns (uint256) {
        return _to.balance;
    }
}