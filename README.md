# Token Contract

The program is a simple Ethereum smart contract that creates a custom token. It has functions to add (mint) and remove (burn) tokens, tracks token balances for different addresses, and lets you set initial token details. This contract provides a basic foundation for custom token creation on the Ethereum blockchain.

## Getting Started

### Executing program

- **Access Remix**

   Open your web browser and go to the Remix online compiler: https://remix.ethereum.org/

- **Create a New File**

   On the Remix interface, you'll see a file explorer on the left side. Click on the "+" icon at the top of the file explorer to create a new file for your Solidity code. Save the file with a .sol extension (e.g., Token.sol). Copy and paste the following code into the file:

```solidity
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


```

- **Compile the Code**

   Click the "Solidity Compiler" tab on the Remix interface. Under the "Compile" section, you should see your Solidity file listed. Click the "Start to compile" button. Remix will compile your Solidity code and display the compilation results below.

- **Deploy the Contract** (Optional)

   If your Solidity code defines a contract that you want to deploy, switch to the "Deploy & Run Transactions" tab in Remix.

   a. If your contract requires constructor arguments, enter them in the "Deploy" section.

   b. Click the "Deploy" button to deploy your contract. Remix will provide a transaction receipt with the contract's address.

- **Interact with the Contract** (Optional)

   If your contract has functions you want to interact with, you can do so using the "Deploy & Run Transactions" tab.

   a. Select the deployed contract from the "Deployed Contracts" section.

   b. Choose the function you want to call and provide any required parameters.

   c. Click the "Transact" button to execute the function. You'll see the transaction details and any outputs from the function.


## Author

**Russell Ray Dacay**
