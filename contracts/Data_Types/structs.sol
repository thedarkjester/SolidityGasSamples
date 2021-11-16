// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

/*
s_1 - 21238 
s_2 - 30175 
s_3 - 30066   
s_4 - 21428
s_4_1 - 109925
s_4_2 - 109775
s_5 - 21391 
s_6 - 21420 
s_7 - 21435 
s_8 - 21471 
*/

contract Structs_1 {
    
     struct Test{
         uint256 a;
         uint256 b;
         bytes32 c;
         bytes32 d;
     }
     
     function InMemoryUsage() public {
         (int256 a, int256 b, bytes32 c, bytes32 d) = (1,2, "a","b");
     }
}

contract Structs_2 {
    
    Test test;
    
     struct Test{
         uint256 a;
         uint256 b;
         bytes32 c;
         bytes32 d;
     }
     
     function InMemoryUsage() public {
         test = Test(1,2, "a","b");
     }
}
contract Structs_3 {
    Test test;
    
     struct Test{
         uint256 a;
         uint256 b;
         bytes32 c;
         bytes32 d;
     }
     
     function InMemoryUsage() public {
         test.a = 1;
         test.b = 2;
         test.c = "a";
         test.d = "b";
     }
}

contract Structs_4 {
     struct Test{
         uint256 a;
         uint256 b;
         bytes32 c;
         bytes32 d;
     }
     
     function InMemoryUsage() public {
         Test memory test;
         test.a = 1;
         test.b = 2;
         test.c = "a";
         test.d = "b";
     }
}

contract Structs_5 {
    
     struct Test{
         uint256 a;
         uint256 b;
         bytes32 c;
         bytes32 d;
     }
     
     function InMemoryUsage() public {
         Test memory test;
         
         test = Test({
             a: 1,
             b: 2,
             d: "b",
             c: "a"
         });
     }
}

contract Structs_6 {
    
    Test testStored;
    
     struct Test{
         uint256 a;
         uint256 b;
         bytes32 c;
         bytes32 d;
     }
     
     function InMemoryUsage() public {
         Test memory test;
         test.a = 1;
         test.b = 2;
         test.c = "a";
         test.d = "b";
         
         testStored = test;
     }
}

contract Structs_7 {
     struct Test{
         uint256 a;
         uint256 b;
         bytes32 c;
         bytes32 d;
     }
     
     Test testStored;
      
     function InMemoryUsage() public {
         testStored = Test(1,2, "a","b");
     }
}

contract Structs_8 {
     struct Test{
         uint256 a;
         uint256 b;
         bytes32 c;
         bytes32 d;
     }
     
     function InMemoryUsage() public {
         Test memory test;
         test.a = 1;
         test.b = 2;
         test.c = "a";
         test.d = "b";
         
         passData(test);
     }
     
     function passData(Test memory t) private {
         
     }
}

contract Structs_9 {
     struct Test{
         uint256 a;
         uint256 b;
         bytes32 c;
         bytes32 d;
     }
     
     function InMemoryUsage() public {
         Test memory test;
         test.a = 1;
         test.b = 2;
         test.c = "a";
         test.d = "b";
         
         passData(1,2,"a","b");
     }
     
     function passData(uint256 a, int256 b, bytes32 c, bytes32 d) private {
         
     }
}

contract Structs_10 {
     struct Test{
         uint256 a;
         uint256 b;
         bytes32 c;
         bytes32 d;
     }
     
     function InMemoryUsage() public {
         Test memory test;
         test.a = 1;
         test.b = 2;
         test.c = "a";
         test.d = "b";
         
         passData(test.a,test.b,test.c,test.d);
     }
     
     function passData(uint256 a, uint256 b, bytes32 c, bytes32 d) private {
         
     }
}