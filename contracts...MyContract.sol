pragma solidity ^0.6.0; 

//lesson #2: variables, data types, custom data structures 

contract MyContract {
    string public myString = "Hello, world!";
    bytes32 public myBytes32 = "Hello, world!";
    int public myInt = 1;
    uint public myUint = 1;
    uint256 public myUint256 = 1;
    uint8 public myUint8 = 1;
    address public myAddress = 0x5A0b54D5dc17e0AadC383d2db43B0a0D3E029c4c;

    struct MyStruct {
        uint myUint;
        string myString;
    }

    MyStruct public myStruct = MyStruct(1, "Hello, World!");

    function getValue() public pure returns(uint) {
        uint value = 1;
        return value;
    }
}