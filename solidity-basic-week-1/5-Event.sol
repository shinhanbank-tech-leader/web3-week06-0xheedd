// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

/*
    todo 1 : EventContract 생성 후 string, uint256 타입의 값을 받는 이벤트 myEvent 생성
    todo 2 : 위에서 생성한 이벤트를 발생시키는 함수 작성 후 호출

    -- 추가정보 --
    1. 이벤트 선언 시 string은 단순한 타입의 정의일 뿐이기 때문에 memory 테그를 붙여 저장위치 명시할 필요 X
*/

contract EventContract {
    // todo 1
    // event : solidity에서의 print. 값을 출력하여 블럭에 저장
    event myEvent(string _name, uint256 _age);

    // todo 2
    function demoFirstEvent(string memory _name, uint256 _age) public {
        emit myEvent(_name, _age);
    }
}