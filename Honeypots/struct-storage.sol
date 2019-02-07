pragma solidity ^0.4.23;

contract H1{
    
    uint secretValue = 69;
    
    struct Player{
        address playerAddress;
        uint secretValueByUser; 
    }
    
    function play(uint _secret) public payable{
        Player storage player;
        player.playerAddress = msg.sender;
        player.secretValueByUser = _secret;
        
        require(player.secretValueByUser == secretValue);
       
    }
}