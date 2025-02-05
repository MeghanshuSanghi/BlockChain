// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

abstract contract Shape {
    function area() public virtual view returns (uint);
}

contract Rectangle is Shape {
    uint length;
    uint width;

    constructor(uint _length, uint _width) {
        length = _length;
        width = _width;
    }

    function area() public view override returns (uint) {
        return length * width;
    }
}

contract Square is Shape {
    uint side;

    constructor(uint _side) {
        side = _side;
    }

    function area() public view override returns (uint) {
        return side * side;
    }
}

contract Circle is Shape {
    uint radius;
    uint constant PI = 314;

    constructor(uint _radius) {
        radius = _radius;
    }

    function area() public view override returns (uint) {
        return (PI * radius * radius) / 100;
    }
}
