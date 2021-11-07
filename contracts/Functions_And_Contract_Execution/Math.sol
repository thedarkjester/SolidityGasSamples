// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

/*
m_1 - 21401  
m_2 - 21401 
m_3 - 21341 
m_4 - 26231 
m_5 - 26244  
m_6 - 26445
m_7 - 26231
m_8 - 26244 
m_9 - 26416 
*/

// uint8 storage and setter
contract MathOperators_1 {
     
     function Operator_1() public {
       uint256 a = 1;
       a = a + 1;
     }
}

contract MathOperators_2 {
     
     function Operator_1() public {
       uint256 a = 1;
       a += 1;
     }
}

contract MathOperators_3 {
     
     function Operator_1() public {
       uint256 a = 1;
       a ++;
     }
}

contract MathOperators_4 {
     uint256 public a = 5;
     function Operator_1() public {
       a = a<<2;
     }
}

contract MathOperators_5 {
     uint256 public a = 5;
     function Operator_1() public {
       a <<=2;
     }
}

contract MathOperators_6 {
     uint256 public a = 5;
     function Operator_1() public {
       a *= 2**2;
     }
}

contract MathOperators_7 {
     uint256 public a = 21000000;
     function Operator_1() public {
       a = a>>10;
     }
}

contract MathOperators_8 {
     uint256 public a = 21000000;
     function Operator_1() public {
       a >>=10;
     }
}

contract MathOperators_9 {
     uint256 public a = 21000000;
     function Operator_1() public {
       a /= 2**10;
     }
}