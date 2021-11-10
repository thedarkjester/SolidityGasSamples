// SPDX-License-Identifier: MIT
/*
string_1 deploy 230840 // set 65976 // string expensive to deploy and use
string_2 deploy 105459 // set 43300 // bytes32 cheaper to use and deploy

string_3 deploy 148591 // set 43670 // packed 128s expensive to deploy
string_4 deploy 109801 // set 65414 // cheaper to deploy, more expensive to use
*/

pragma solidity 0.8.9;

// string getter and setter
contract StringsVsBytes_1 {
     string s;
     
     function SetString() public {
      s = "thisisthirtytwocharactersyesitis";   
     }

     function  GetString() public view returns(string memory){
         return s;
     }
}

contract StringsVsBytes_2 {
     bytes32 s; 
     
     function SetString() public {
      s = "thisisthirtytwocharactersyesitis";   
     }

     function  GetString() public view returns(bytes32){
         return s;
     }
}

contract StringsVsBytes_3 {
     bytes16 s; 
     bytes16 t; 
     bytes16 u;
     bytes16 v; 
     
     function SetString() public {
       s = "sixteensixteen16";
       t = "sixteensixteen16";
       u = "sixteensixteen16";
       v = "sixteensixteen16";
     }

     function  GetString() public view returns(bytes16, bytes16, bytes16, bytes16){
         return (s,t,u,v);
     }
}

contract StringsVsBytes_4 {
     bytes32 s; 
     bytes32 t;
     bytes32 u;
     bytes32 v; 
     
     function SetString() public {
       s = "sixteensixteen16";
       t = "sixteensixteen16";
       u = "sixteensixteen16";
       v = "sixteensixteen16";
     }

     function  GetString() public view returns(bytes32, bytes32, bytes32, bytes32){
         return (s,t,u,v);
     }
}