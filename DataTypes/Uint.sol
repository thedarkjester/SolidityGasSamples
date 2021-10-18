// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
2 types of gas costs - deploy and execute

uint_1 = deploy 82781 // execute 43353 - 
uint_2 = deploy 78679 // execute 43300 
uint_3 = deploy 78691 // execute 43300 

// uint256 * 2 vs. uint128 * 2
uint_4 = deploy 80207 // execute 65414  
uint_5 = 101789 deploy // execute 
*/

// uint8 storage and setter
contract DataTypes_uint_1 {
    
     uint8 i;
     
     function SetInt() public {
      i = 1;   
     }
}

// uint256 explicit declare storage and setter
contract DataTypes_uint_2 {
    
     uint256 i;
     
     function SetInt() public {
       i = 1;   
     }
}

// with having to work out the cast to uint256
contract DataTypes_uint_3 {
    
     uint i;
     
     function SetInt() public {
       i = 1;   
     }
}

// uint256 explicit declare 
contract DataTypes_uint_4 {
    
     uint256 i;
     uint256 y;
     
     function SetInt() public {
       i = 1;   
       y = 1;
     }
}

// uint128 with 2 instances - is stacking like this perhaps cheaper? 
contract DataTypes_uint_5 {
    
     uint128 i;
     uint128 y;
     
     function SetInt() public {
       i = 1;   
       y = 1;
     }
}