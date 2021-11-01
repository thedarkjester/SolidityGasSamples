// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
e_1 - 145255 - 21886
e_2 - 144991 - 21886
e_3 - 113533 - 21626 
e_4 - 144979 - 21886
e_5 - 305061 - 35942
e_6 - 305061 - 23648
*/

// uint8 storage and setter
contract Errors_1 {
    //anyone can call me
    function func_1(bool testBool) public {
        require(testBool,"This value you passed is false");
    }

}

contract Errors_2 {
    //anyone can call me
     function func_1(bool testBool) public {
        require(testBool,"Bad bool");
    }
}

// don't get too excited about this as a saving though, it really should only be used to check invarients and state
contract Errors_3 {
    //anyone can call me
     function func_1(bool testBool) public {
        assert(testBool);
    }
}

contract Errors_4 {
    //anyone can call me
     function func_1(bool testBool) public {
        if(!testBool){
            revert("Bad bool");
        }
    }
}

contract Errors_5 {
    
    bool testCondition;
    
    bytes32[] strings;
    
    constructor(){
        strings.push("wow");
        strings.push("this");
        strings.push("is");
        strings.push("expensive");
    }
    
    function testing() public{
        if(!contains("expensive") || !testCondition){
            revert("failed");
        }
    }
    
    function contains(bytes32 stringToCheck) private returns(bool){
        for(uint256 i=0;i<strings.length;i++){
            if(stringToCheck == strings[i]){
                return true;
            }
        }
        
        return false;
    }
}

contract Errors_6 {
    
    bool testCondition;
    
    bytes32[] strings;
    
    constructor(){
        strings.push("wow");
        strings.push("this");
        strings.push("is");
        strings.push("expensive");
    }
    
    function testing() public{
        if(!testCondition || !contains("expensive")){
            revert("failed");
        }
    }
    
    function contains(bytes32 stringToCheck) private returns(bool){
        for(uint256 i=0;i<strings.length;i++){
            if(stringToCheck == strings[i]){
                return true;
            }
        }
        
        return false;
    }
}