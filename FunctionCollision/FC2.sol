pragma solidity ^0.5.0;

contract FC2{
    
    function tgeo() public payable{
        
    }
        
    function() external payable{
        msg.sender.transfer(address(this).balance);
    }
    function getContractBalance() public view returns(uint){
        return address(this).balance;
    }
}