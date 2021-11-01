// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
a_1 - 76975   - 21186 
a_2 - 76975   - 21186
a_3 - 195493   ( call public 25344 ) (call public)
a_4 - 189271   
a_5 - 117763  
a_7 - 117763 
a_7 - 347056   - (4 exec 28591 ) (5 exec 27479 ) ( 6 exec 27479 )
a_8 - 67066  
a_9 - 67066 
a_10 76975 
a_11 76975 
*/

// uint8 storage and setter
contract Accessors_1 {
    //anyone can call me
    function func() public {

    }
}

//only contracts can call me
contract Accessors_2 {
    function func() external {

    }
}



contract Accessors_3 {
    function func(address addr) public {
       (bool success,) = addr.delegatecall(abi.encodeWithSignature("func()"));
    }
}

contract Accessors_4 {
    function func(uint256[] memory) public {
      
    }
}

// this shouldn't be possible? but remix allows it
contract Accessors_5 {
    function func(uint256[] calldata arr) public {
      
    }
}

contract Accessors_6 {
    function func(uint256[] calldata arr) external {
      
    }
}

contract Accessors_7 {
    
    function func(address addr) public {
      uint[] memory newArray = new uint[](3);
      newArray[0] = 1;
      newArray[1] = 2;
      newArray[2] = 3;
      
      (bool success,) = addr.delegatecall(abi.encodeWithSignature("func(uint256[])",newArray));
      if(!success){
          revert("boom");
      }
    }
}

//only private or parents can call me
contract Accessors_8 {
    function func() internal {

    }
}

//only this contract can call me
contract Accessors_9 {
    function func() private {

    }
}

contract Accessors_10 {
    function func() public view {

    }
}


contract Accessors_11 {
    function func() public pure {

    }
}