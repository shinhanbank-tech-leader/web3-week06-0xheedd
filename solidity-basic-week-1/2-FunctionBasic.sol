// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

/*
    todo 1-1 : MyFunction 컨트랙트 생성 후 부호없는 정수 값을 가지는 상태변수 a를 선언
    todo 1-2 : 인자 및 리턴값 없는 함수 생성하여 호출될 때 마다 a의 값을 1씩 증가시키는 함수 작성
    todo 1-3 : 상태변수 a의 값에 부호없는 정수 인자인 _a 값을 더한 뒤 a의 값을 리턴하는 함수 작성
*/

contract MyFunction {
    // todo 1-1
    uint256 public a = 5;

    // todo 1-2


    // todo 1-3
 

}


/*
    todo 2-1 : MyConstructor 컨트랙트 생성 후 string, uint256 타입의 상태변수 name, age 생성
    todo 2-2 : 컨트랙트가 배포될 때 name, age 상태변수에 인자로 받은 값을 지정하는 constructor 생성
*/
contract MyConstructor {
    // todo 2-1
    string public name;
    uint256 public age;
    
    // todo 2-2
    // constructor(string memory _name, uint256 _age) {
    //     name = _name;
    //     age = _age;
    // }   
}