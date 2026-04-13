// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Escrow {
    address public depositor;       // 구매자
    address public beneficiary ;    // 판매자
    address public arbiter;         // 중재자
}