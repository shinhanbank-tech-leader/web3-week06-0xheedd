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

    function tip() public payable {
        // tip함수 호출하여 컨트랙트에 들어온 이더를 owner계정으로 보냄
        (bool sent, ) = owner.call{value: msg.value}("");
        require(sent, "Tip to owner failed");    
    }

    function donate() public {
        // charity 주소를 payable로 형변환하여 selfdestruct
        selfdestruct(payable(charity));

        // // donate함수 호출하여 컨트랙트(this)의 모든 이더를 charity 계정으로 보냄
        // (bool sent, ) = charity.call{value: address(this).balance}("");
        // require(sent, "Donate to charity failed");
    }

}

/*
=> 스마트컨트랙트 생명주기 관리
- selfdestruct : 컨트랙트 영구 삭제 및 잔액 강제 전송
- CREATE2 : 특정 주소에 컨트랙트 배포하여 수정/업그레이드/복구 용이하게 함
- revert : 트랜잭션 취소 및 상태 복구
*/