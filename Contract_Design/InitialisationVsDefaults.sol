// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
i_1 - 91903   
i_2 - 89296  
i_3 - 67066 
i_4 - 89484 
i_5 - 89484 
i_6 - 67054 
*/

// uint8 storage and setter
contract Initialisation_1 {
     uint256 ii = 1;
     bool test  = false;

     constructor(){
         
     }
}

contract Initialisation_2 {
    uint256 ii;
    bool test;

    constructor(){
        ii = 1;
    }
}

contract Initialisation_3 {
    uint256 ii;
    bool test;

    constructor(){
    }
}

contract Initialisation_4 {
    bytes32 byteStr = "some string";
    
    constructor(){

    }
}

contract Initialisation_5 {
    bytes32 byteStr;
    
    constructor(){
        byteStr = "some string";
    }
}

contract Initialisation_6 {
    bytes32 byteStr;

    constructor(){

    }
}