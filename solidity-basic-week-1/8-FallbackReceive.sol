// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

/*
    todo 1 : FallbackReceive 컨트랙트 생성 후 address, string 타입의 값을 받는 이벤트 MyEvent 생성
    todo 2 : MyEvent 발생시키는 receive() 생성
    todo 3 : MyEvent 발생시키는 fallback() 생성

    -- 추가정보 --
    1. receive() 생성 시 payable 키워드 없이는 에러 발생
    2. payable 없는 fallback() 으로 ETH 전송 시 실패
    3. fallback() 만으로도 충분하지 않은가? -> 로직분리 및 가스효율 등의 이유로 receive(), fallback() 분리
*/

contract FallbackReceive {
    // todo 1
    event MyEvent(address _from,uint256 _value ,string message);

    // todo 2, 8
    receive() external payable {
        emit MyEvent(msg.sender, msg.value,"Recevie called");
    }

    // todo 3
    fallback() external   {
        // emit MyEvent(msg.sender, msg.value,"Fallback called");
    }

    // extra : call 로 외부 컨트랙트의 함수 호출 성공 예시
    // function myFunction(uint256 _value) public pure returns (uint256) {
    //     return _value * 2;
    // }
}


/*
    todo 4 : MyContract 컨트랙트 생성 후 getBalance() 함수 생성
    todo 5 : sendEthNoData() 호출하여 FallbackReceive 컨트랙트로 call 사용하여 데이터 없이 ETH 전송
    todo 6 : sendDataNoEth() 호출하여 FallbackReceive 컨트랙트로 call 사용하여 데이터만 전송
    todo 7 : SendEthAndData() 호출하여 FallbackReceive 컨트랙트로 call 사용하여 데이터 및 ETH 전송
    todo 8 : receive() 주석처리 후 sendEthNoData() 호출 시 fallback() 호출 확인
*/

contract MyContract {
    // todo 4
    function getBalance(address _to) public view returns (uint256) {
        return _to.balance;
    }

    // todo 5
    function sendEthNoData(address payable _to) public payable returns (string memory) {
        (bool sent, ) = _to.call{value: msg.value}("");
        if (sent) { return "ETH Transfer Success"; } 
        else { return "ETH Transfer Failure"; }
    }
    
    // todo 6
    function sendDataNoEth(address _to) public returns (string memory) {
        (bool sent, ) = _to.call("HI");
        if (sent) { return "ETH Transfer Success"; } 
        else { return "ETH Transfer Failure"; }
    }

    // todo 7
    function SendEthAndData(address payable _to) public payable returns (string memory) {
        (bool sent, ) = _to.call{value: msg.value}("HI");
        if (sent) { return "ETH Transfer Success"; } 
        else { return "ETH Transfer Failure"; }
    }

    // extra : call 로 외부 컨트랙트의 함수 호출 성공 예시
    function callMyFunction(address _target, uint256 _input) public returns (uint256) {
        (bool success, bytes memory data) = _target.call(
            abi.encodeWithSignature("myFunction(uint256)", _input)
        );

        if (success) { 
            uint256 result = abi.decode(data, (uint256));
            return result;
        } else { 
            return 0; 
        }
    }
}