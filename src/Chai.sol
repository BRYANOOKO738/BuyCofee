// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
error InsufficientAmount();
contract Chai {
    struct Memo{
        string memo;
        string message;
        uint timestamp;
        address from;
    }
    Memo[] memos;

    address payable owner;

    constructor() {
     owner = payable (msg.sender);
    }

    function buychai
    (string calldata 
    name,string calldata message)
     external payable {
     if(msg.value < 0){
        revert InsufficientAmount();
     }

     owner.transfer(msg.value);
     memos.push(Memo(name
     ,message,block.timestamp,msg.sender));

     }

     function getMemos() public view returns 
     (Memo[] memory){
        return memos;
     }
}
