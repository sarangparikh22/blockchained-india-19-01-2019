pragma solidity ^0.5.0;

contract DOSwithRevert{
    
    // 0.5.0 explicitation
    address payable highestBidder;
    uint highestBidAmount;
    uint public val = 0;
    
    function bid()
    public
    payable{
        
        require(msg.value>highestBidAmount);
        
        highestBidder.transfer(highestBidAmount);
        
        highestBidder = msg.sender;
        highestBidAmount = msg.value;
    }
    
    function showHighestBid()
    public
    view
    returns(uint){
        return highestBidAmount / 1 ether;
    }

    function showHighestBidder()
    public
    view
    returns(address){
        return highestBidder;
    }    
    
    function increaseVal() public {
        val = val+1;
    }
}