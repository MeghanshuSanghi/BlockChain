// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calculator {
    uint public result;

    constructor() {
        result = 0;
    }

    function add(uint _a, uint _b) public returns (uint) {
        uint sum = _a + _b;
        result = sum;
        return sum;
    }

    function subtract(uint _a, uint _b) public returns (uint) {
        uint diff = _a - _b;
        result = diff;
        return diff;
    }

    function multiply(uint _a, uint _b) public returns (uint) {
        uint product = _a * _b;
        result = product;
        return product;
    }

    function divide(uint _a, uint _b) public returns (uint) {
        require(_b > 0, "Division by zero is not allowed!");
        uint quotient = _a / _b;
        result = quotient;
        return quotient;
    }
    
    function resetResult() public {
        result = 0;
    }
}
