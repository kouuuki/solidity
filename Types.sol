// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TypesContract {
    uint private myInt = 2;
    uint public myInt2 = 3;

    struct MyStruct {
        string name;
        uint256 age;
    }

    MyStruct public myStruct = MyStruct("Hoge", 20);
    function getValue() public pure returns(uint) {
        uint value = 1;
        return value;
    }
}
