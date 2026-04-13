// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

/*
    todo : DataType 컨트랙트 생성 후 솔리디티의 기본 데이터 타입의 상태변수 선언 -> .sol 파일 컴파일 -> 컨트랙트 배포 및 호출 진행
         : 솔리디티 기본 데이터 타입은 길이가 정해져 있습니다 -> 범위를 벗어나는 값 지정 후 오류 확인

         - 상태변수 : 전역변수같은거
         상태 변수는 함수 외부에서 선언되며, 컨트랙트의 스토리지(Storage), 즉 이더리움 블록체인에 영구적으로 기록되는 변수입니다. 컨트랙트 내의 모든 함수에서 접근할 수 있어 전역 변수처럼 동작
*/

contract DataType {
    // 1. bool 타입 변수 선언 및 논리연산
    // bool public isTrue = true;
    // bool public isFalse = false;
    

    // bool public isAnd = isTrue && isFalse;
    // bool public isOr = isTrue || isFalse;
    // bool public isNegate = !isTrue;


    // 2. bytes 타입 변수 선언
    // // bytes4 public myBytes = 0xFFFFFFFFFFF;   //overflow는 compile error
    // bytes4 public myBytes = 0xFFFFFFFF;

    
    // 3. address 타입 변수 선언
    // address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;


    // 4. int 타입 변수 선언
    // int8~int256; 마이너스 있음
    // max보다 크게 넣으면; 오버플로우는 컴파일에러
    int8 public myInt8 = 127;


    // 5. uint 타입 변수 선언
    uint8 public myUint8 = 255;
}