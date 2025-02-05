// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ValueUpdater {
    uint public value;

    event ValueChanged(uint indexed oldValue, uint indexed newValue, address indexed caller);

    function updateValue(uint _newValue) public {
        uint oldValue = value;
        value = _newValue;
        emit ValueChanged(oldValue, value, msg.sender);
    }
}
