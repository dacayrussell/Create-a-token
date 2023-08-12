// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract myToken {
    string public name;
    string public symbol;
    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;

    constructor(string memory _name, string memory _symbol, uint256 _initialSupply) {
        name = _name;
        symbol = _symbol;
        totalSupply = _initialSupply;
        balanceOf[msg.sender] = _initialSupply;
    }

    function mint(address _receiver, uint256 _amount) public {
        require(_amount > 0, "Amount must be greater than 0");
        totalSupply += _amount;
        balanceOf[_receiver] += _amount;
    }

    function burn(address _owner, uint256 _amount) public {
        require(_amount > 0, "Amount must be greater than 0");
        require(balanceOf[_owner] >= _amount, "Insufficient balance");
        
        totalSupply -= _amount;
        balanceOf[_owner] -= _amount;
    }
}
