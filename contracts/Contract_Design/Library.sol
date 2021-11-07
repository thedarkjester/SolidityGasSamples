// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

/*
f_1 - 274287 - 99825 - 48525
f_2 - 148063 - 103637 - 52337
f_3 - 274959 - 99835 - 48535
*/

// uint8 storage and setter
contract Library_1 {
     
     address[] owners;
     mapping(address=>uint256) ownerBalances;

     function SplitFunds() public payable {
         distributeFunds(msg.value);
     }

     function addOwner() public {
         // this should have checks, using this to just illustrate a point
         owners.push(msg.sender);
     }

     function distributeFunds(uint256 amount) private {     
        uint256 split = amount / owners.length;
        uint256 remainder = amount % owners.length;
        ownerBalances[owners[0]] += remainder;
        
        for(uint i=0; i < owners.length;i++) {
            ownerBalances[owners[i]] += split;
        }
     }
}


contract Library_2 {
     
     address[] owners;
     mapping(address=>uint256) ownerBalances;

     function SplitFunds() public payable {
         FeeSplitter.distributeFunds(msg.value, owners, ownerBalances);
     }

     function addOwner() public {
         // this should have checks, using this to just illustrate a point
         owners.push(msg.sender);
     }
}


contract Library_3 {
     
     address[] owners;
     mapping(address=>uint256) ownerBalances;

     function SplitFunds() public payable {
         distributeFunds(msg.value, owners, ownerBalances);
     }

     function addOwner() public {
         // this should have checks, using this to just illustrate a point
         owners.push(msg.sender);
     }
     
     function distributeFunds(uint256 amount, address[] storage owners, mapping(address => uint256) storage ownerBalances) private {     
        uint256 split = amount / owners.length;
        uint256 remainder = amount % owners.length;
        ownerBalances[owners[0]] += remainder;
        
        for(uint i=0; i < owners.length;i++) {
            ownerBalances[owners[i]] += split;
        }
     }
}

library FeeSplitter{
    
    function distributeFunds(uint256 amount, address[] storage owners, mapping(address => uint256) storage ownerBalances) public {     
        uint256 split = amount / owners.length;
        uint256 remainder = amount % owners.length;
        ownerBalances[owners[0]] += remainder;
        
        for(uint i=0; i < owners.length;i++) {
            ownerBalances[owners[i]] += split;
        }
     }
}