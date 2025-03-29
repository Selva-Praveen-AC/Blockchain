// SPDX-License-Identifier: MIT
pragma solidity 0.8;

contract Wallet{
    address public owner;

    constructor(){
        owner=msg.sender;
    }

    function Deposit(uint256)public payable{
        require(msg.sender==owner,"Can able to deposit");
        require(msg.value>0,"Must add some ether");
    }

    function checkBalance()public view returns (uint256){
        return address(this).balance;
    }

    function withDraw(uint256 _amount)public {
        require(msg.sender==owner,"Only owner can withdraw");
        require(address(this).balance>=_amount,"Insufficient balance");
        payable(owner).transfer(_amount);
    }
}