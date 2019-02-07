pragma solidity ^0.5.0;

contract R4{
    
    mapping(address => uint) balanceOf;
    
    function getBalance() public view returns(uint){
        return balanceOf[msg.sender];
    }
    
    function transfer(uint _val, address payable _addr) public{
        require(balanceOf[msg.sender] - _val >= 0);
        balanceOf[msg.sender] -= _val;
        balanceOf[_addr] += _val;
    }
    
    function() external payable{
        balanceOf[msg.sender] += msg.value;
    }
    
}