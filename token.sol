// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // public variables here
    string public TokenName = "Russell";
    string public TokenAbbrv = "Russ";
    uint public TotalSupply = 0;
    
    // mapping variable here
    mapping(address => uint) public balances;

    // mint function
    function mint (address _address, uint _value) public{
       TotalSupply += _value;
       balances[_address] += _value;
    }
    // burn function
   function burn (address _address, uint _value) public{
      if (balances[_address] >= _value) {
      TotalSupply -= _value;
      balances[_address] -= _value;
      }
   }
}

