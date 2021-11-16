// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

/*
2 types of gas costs - deploy and execute

uint_1 = deploy 82793  // execute 43353 
uint_2 = deploy 78691  // execute 43300 
uint_3 = deploy 81941  // execute 87528 
uint_4 = deploy 81941  // execute 87528
// uint256 * 2 vs. uint128 * 2
uint_5 = deploy 80207  // execute 65414   
uint_6 = deploy 101789  // execute  43670 
*/

// uint8 storage and setter
contract DataTypes_uint_1 {
     uint8 i;
     
     function SetInt() public {
      i = 1;   
     }
}

// uint256 explicit declare 
contract DataTypes_uint_2 {
     uint256 i;
     
     function SetInt() public {
       i = 1;   
     }
}

contract DataTypes_uint_3 {
     uint256 i;
     uint256 y;
     uint256 z; 
     
     function SetInt() public {
       i = 1;   
       y = 1;
       z = 1;
     }
}

// uint default value
contract DataTypes_uint_4 {
     uint i;
     uint y;
     uint z;
     
     function SetInt() public {
       i = 1;   
       y = 1;
       z = 1;
     }
}


// uint256 explicit declare 
contract DataTypes_uint_5 {
     uint256 i;
     uint256 y;
     
     function SetInt() public {
       i = 1;   
       y = 1;
     }
}


// uint256 with 2 instances 
contract DataTypes_uint_6 {
     uint128 i;
     uint128 y;
     
     function SetInt() public {
       i = 1;   
       y = 1;
     }
}
