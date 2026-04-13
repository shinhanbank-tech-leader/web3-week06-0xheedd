// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

/*
    todo 1 : OriginContract 컨트랙트 생성 후 string 값을 리턴하는 public 함수 생성
    todo 2 : string 값을 리턴하는 external 함수 생성
    todo 3 : 동일 컨트랙트 내 함수들을 호출하는 callFunctions() 함수 생성 후 external 함수 호출 시 에러 확인
*/

contract OriginContract {
    // todo 1
    function publicFunction() public pure returns (string memory) {
        return "public function called";
    }

    // todo 2


    // todo 3
    function callFunctions() public pure returns (string memory) {
        return publicFunction();
        
        // external 이 정의된 컨트랙트 내에서는 해당 extenral 함수 호출 불가능
        // return externalFunction();
    }
}