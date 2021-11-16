// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

/*
i_1 - 217532 - 65564 - 25749
i_2 - 179425 - 87820 - 23450
*/

contract Arrays_And_Mappings_1 {
     address[] owners;
 
     constructor(address[] memory addresses){
        owners = addresses;
     }

     function AddOwner() public {
        owners.push(msg.sender);
     }

     function CheckOwner() isOwnerCheck public {

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

contract Arrays_And_Mappings_2 {
     mapping(address=>bool) isOwner;
     
     address[] owners;

     constructor(address[] memory addresses){
        owners = addresses;
        
        for(uint i;i<addresses.length;i++){
            isOwner[addresses[i]] = true;
        }
     }

     function AddOwner() public {
        owners.push(msg.sender);
        isOwner[msg.sender] = true;
     }

     function CheckOwner() isOwnerCheck public {
        // just checking the modifier cost
     }

     modifier isOwnerCheck(){
        require(isOwner[msg.sender],"not owner");
         _; 
     }
}