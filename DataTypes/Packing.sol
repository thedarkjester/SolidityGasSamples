// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
p_1 - 103523 - 87634 
p_2 - 103739  - 65784 
p_3 - 103523 - 65784
p_4 - 165865 - 66040 
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

contract DataTypes_packed_6 {
    
     uint8 a;

     struct PackItA{
         bytes16 x;
         uint8 i;
     }

     struct PackItB{
        bytes16 x;
        uint8 i;
     }

     struct PackItC{
        bytes16 x;
        uint8 i;
        uint z;
     }

     uint8 b;

    function SetVals() public {
      a = 1;
      b = 2; 
    
     PackItA memory pack;
      pack.x  = "a";
      pack.i =  1;
     

     PackItB memory pack2;
      pack.x  = "a";
      pack.i =  1;
     

      PackItC memory pack3;
      pack.x  = "a";
      pack.i =  1;
    }
}

contract DataTypes_packed_7 {
    
     uint8 a;

     struct PackItA{
         bytes16 x;
         uint8 i;
     }

     uint8 b;

     struct PackItB{
        bytes16 x;
        uint8 i;
     }

     struct PackItC{
        bytes16 x;
        uint8 i;
        uint8 z;
     }

   

    function SetVals() public {
      a = 1;
      b = 2; 

     PackItA memory pack;
      pack.x  = "a";
      pack.i =  1;
     

      PackItB memory pack2;
      pack.x  = "a";
      pack.i =  1;
     

      PackItC memory pack3;
      pack.x  = "a";
      pack.i =  1;
    }
}