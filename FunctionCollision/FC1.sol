pragma solidity ^0.5.0;

import "./FunctionCollision2.sol";

contract FC1{

    FC2 fc2;
    address payable public addressOfContract;
    
    constructor(address payable _addr) public {
        fc2 = FC2(_addr);
        addressOfContract = _addr;    
    }
    
    function getRich() public payable{
        //addressOfContract.call(bytes4(keccak256("gsf()"));
        //fc2.gsf.value(msg.value)();
        addressOfContract.call.value(msg.value)(abi.encodeWithSignature("gsf()")); // if deposit throws an exception, the raw call() will only return false and transaction will NOT be reverted    }
    }
    
    function getContractBalance() public view returns(uint){
        return address(this).balance;
    }
}