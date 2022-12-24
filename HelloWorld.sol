// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;
 
 contract HelloWorld{
     string public myString = "Canim Sevgilim";
 }

 // Data Types - values and references 

contract ValueTypes {
    bool public b = true;
    uint public u = 123;
    int public i =123;

    int public minInt = type(int).min;
    int public maxInt = type(int).max;
  //  address public addr=0xa12312526343;
  //  bytes32 public b32 = 0x123412322144;
}
// ------------State Variables----------
contract StateVariables{
    uint public MyUint = 123;

    function foo() external {
        uint notStateVariable = 456;
    }
}
//----------LocalVariables-------------
contract LocalVariables{
    uint public i;
    bool public b;
    address public myAddress;

    function foo() external{
        uint x =12;
        bool f = false;
        // more code
        x+=456;
        f = true;

        i = 123;
        b = true;
        myAddress = address(1);
    }
}

contract GlobalVariables{
    function globalVars() external view returns (address,uint,uint){
        address sender= msg.sender;
        uint timestamp = block.timestamp;
        uint blockNum = block.number;
        return (sender, timestamp, blockNum);
    }
}

contract DefaultValues{
    bool public b; //false
    uint public u; // 0
    int public i; // 0
    address public a; //0x0000000000000000000000000000000000
    bytes32 public b32; //0x00000000000000000000000000000000000
}

contract Enum{
    enum Status{
        None,
        Pending,
        Shipped,
        Completed,
        Rejected,
        Canceled
    }
    Status public status;

    struct Order{
        address buyer;
        Status status;
    }

    Order[] public orders;

    function get() view external returns (Status){
        return status;
    }
    function set(Status _status) external{
        status = _status;
    }
    function ship() external{
        status=Status.Shipped;
    }
    function reset() external{
        delete status;
    }
}
