// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
p_1 - 103523 - 87634 
p_2 - 103739  - 65784 

p_4 - 165853 - 66040 
p_5 - 165865 - 66040 
*/

// uint8 storage and setter
contract DataTypes_packed_1 {
    
     uint128 a;
     uint256 b;
     uint128 c;
     
     function SetInts() public {
      a = 1;
      b = 2;
      c = 3;   
     }
}

contract DataTypes_packed_2 {
    
     uint256 a;
     uint128 b;
     uint128 c;
    
    function SetInts() public {
      a = 1;
      b = 2;
      c = 3;   
     }
}

contract DataTypes_packed_3 {
    
     uint128 a;
     uint128 b;
     uint256 c;

    function SetInts() public {
      a = 1;
      b = 2;
      c = 3;   
     }
}

contract DataTypes_packed_4 {
    
     uint128 a;
     uint128 c;
     uint256 b;

     struct PackIt{
         bytes16 b1;
         bytes32 b2;
         bytes16 b3;
     }

    function SetVals() public {
      a = 1;
      b = 2;
      c = 3; 

      PackIt memory pack;
      pack.b1  = "a";
      pack.b2 =  "b";
      pack.b3 =  "c";
     }
}

contract DataTypes_packed_5 {
    
     uint128 a;
     uint128 c;
     uint256 b;

     struct PackIt{
         bytes16 b1;
         bytes16 b3;
         bytes32 b2;
     }

    function SetVals() public {
      a = 1;
      b = 2;
      c = 3; 

      PackIt memory pack;
      pack.b1  = "a";
      pack.b2 =  "b";
      pack.b3 =  "c";
     }
}