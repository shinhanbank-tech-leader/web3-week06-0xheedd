// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

/*
    todo 1 : ViewPure 컨트랙트 생성 후 부호없는 정수 값을 가지는 상태변수 a를 선언
    todo 2 : view 함수 생성 후 상태변수 a 값 참조 성공 및 변경 실패 확인
    todo 3 : pure 함수 생성 후 상태변수 a 값 참조 실패 확인
*/

contract ViewPure {
    // todo 1
    uint256 public a = 0;

    // todo 2
    function functionView() public view returns (uint256) {
        return a + 2;
    }

    // todo 3
    function functionPure() public pure returns (uint256) {
        return 2;
        //return a; 하면 컴파일에러. 아예 보지도못함
    }
}