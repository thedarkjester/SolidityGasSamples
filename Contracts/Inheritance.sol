// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
i_1 - 149737 - 75607
i_2 - 145867 - 75564
*/

// uint8 storage and setter
contract Inherit_1 {    
     function DoWork(uint256 start) internal virtual pure returns (uint256) {
         for(uint256 i = 1; i<100;i++){
             start++;
         }

         return start;
     }
}

contract Inherit_2 is Inherit_1{

    uint256 val;

    function  Work(uint256 i) public {
        val = DoWork(i);
    }

    function  DoWork(uint256 start) internal  override pure returns(uint256) {
        return super.DoWork(start);
    }
}

contract Inherit_3{

    uint256 val;

    function  Work(uint256 i) public {
        val = DoWork(i);
    }

    function DoWork(uint256 start) private pure returns (uint256) {
         for(uint256 i = 1; i<100;i++){
             start++;
         }

         return start;
    }
}