// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
	uint configA;
	uint configB;
	uint configC;
	address owner;

	constructor() {
		owner = msg.sender;
	}

	function setA(uint _configA) public onlyOwner {
		configA = _configA;
	}

	function setB(uint _configB) public onlyOwner {
		configB = _configB;
	}

	function setC(uint _configC) public onlyOwner {
		configC = _configC;
	}

	modifier onlyOwner {
		// TODO: require only the owner access
		// if(msg.sender != owner) revert();
		require(msg.sender == owner, "Not the contract owner");

		// TODO: run the rest of the function body
		// 함수의 본래 내용이 실행될 위치 지정
		_;
	}
}

/*
- modifier : 특정 함수가 실행되기 전후에 반복적으로 확인해야 하는 로직(권한 체크, 상태 확인 등)을 따로 빼서 재사용하는 도구 (스프링 AOP같이)
- '_(언더스코어)' : 컴파일러에게 "Modifier가 붙은 함수의 본문 내용을 여기에 끼워 넣어라"라고 알려주는 일종의 기호
*/
