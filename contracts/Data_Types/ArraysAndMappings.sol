// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

/*
i_1 - 217532 - 65564 - 25749
i_2 - 179425 - 87820 - 23450
*/

contract Arr_Map_1 {
    
     address[] owners;
 
     function addOwner() public {
        owners.push(msg.sender);
     }

     function addOwner2() isOwnerCheck public {

     }

     modifier isOwnerCheck(){
         
        bool isOwned;
        for(uint256 a = 0;a<owners.length;a++){
             if(owners[a] == msg.sender){
                isOwned = true;
                break;
            }
        }
        require(isOwned,"not owner");
         _; 
     }
}

contract Arr_Map_2 {
     mapping(address=>bool) isOwner;
     
     address[] owners;
 
     function addOwner() public {
        owners.push(msg.sender);
        isOwner[msg.sender] = true;
     }

     function addOwner2() isOwnerCheck public {

     }

     modifier isOwnerCheck(){
        require(isOwner[msg.sender],"not owner");
         _; 
     }
}
