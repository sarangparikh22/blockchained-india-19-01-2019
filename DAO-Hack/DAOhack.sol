pragma solidity ^0.5.0;

contract R3{
    
    address payable owner;
    mapping(address => uint) balanceOf;
    
    constructor() public payable{
        owner = msg.sender;
    }
    
    function getContractBalance() public view returns(uint){
        return address(this).balance;
    }
    
    function getBalance() public view returns(uint){
        return balanceOf[msg.sender];
    }
    
    function withdrawAll() public{
        require(msg.sender == owner);
        owner.transfer(address(this).balance);
    }
    function withdraw() public{
        uint amount = balanceOf[msg.sender];
        require(amount > 0);
        msg.sender.call.value(amount)("");
        balanceOf[msg.sender] = 0;
    }
    
    function() external payable{
        balanceOf[msg.sender] += msg.value;
    }
    
}