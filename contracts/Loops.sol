// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SumOfNaturalNumbers {

    function sumUsingForLoop(uint n) public pure returns (uint) {
        uint sum = 0;
        for (uint i = 1; i <= n; i++) {
            sum += i;
        }
        return sum;
    }

    function sumUsingWhileLoop(uint n) public pure returns (uint) {
        uint sum = 0;
        uint i = 1;
        while (i <= n) {
            sum += i;
            i++;
        }
        return sum;
    }

    function sumUsingDoWhileLoop(uint n) public pure returns (uint) {
        uint sum = 0;
        uint i = 1;
        if (n > 0) {
            do {
                sum += i;
                i++;
            } while (i <= n);
        }
        return sum;
    }
}
