# SolidityGasSamples
This is to illustrate different ways to optimise gas - what to do and what not to do

# What it covers
1. Data Types
2. Contract usage
3. Functions and special keywords
4. Libraries and inter-contract execution
5. The optimiser

## How is it laid out

The solution is comprised of multiple solidity `.sol` files. Each of these files will contain more than one contract in them with usage permutations to illustrate how much gas is used for Deployment and sometimes how much gas is used for executing a transaction. Some of the contracts pertain to storage costs.

## How to use the contracts

1. Open the `.sol` file and copy the contents
2. Go to [Remix](https://remix.ethereum.org/), create a new `.sol` file, and paste the contents
3. It is generally best to clear out the log output and previously deployed contracts for ease of use
4. For each of these contracts (note: each contract should only differ by the implementation, and care has been taken to avoid misleading costs - please submit a PR if you find something that makes the output comparison inaccurate)
   1. Deploy the contract (with the JavaScript VM - the object is for gas cost comparison)
   2. View the gas costs and take note of this cost (some `.sol` files will have some numbers at the top prepopulated in the format of `deploy cost - execution cost`)
   3. If there are some functions, execute the function(s) there
   4. Take note of the gas costs for the function(s)
   5. Compare the gas costs against each contract implementation to gain insight into how they differ
   6. Take the difference and see the `$` value - by inputting it at [https://www.cryps.info/en/Gwei_to_USD](https://www.cryps.info/en/Gwei_to_USD) 

## Samples

Try go in order, as some of the understanding is layered

### Data types

1. Variable naming
   1. Names make no difference in gas costs
2. Function naming
   1. Names make no difference in gas costs
3. Uints
   1. declaring as a lower uint (e.g. `uint8` costs more to deploy and execute)
   2. declaring `uint256` is not cheaper than declaring as `uint` - they are the same
   3. as with point 1, it is cheaper to construct a contract with a `uint256`, but interestingly a `uint256` is a lot more expensive to set (it has to do with the variable packing going on - see packing section)
4.  Strings vs. bytes
   1. Fixed bytes are cheaper to deploy and use over strings ( e.g. `bytes32` vs. string ) (note: you are limited to the size you define)
   2. Similar to `uint` declarations, it is cheaper to use smaller sized `bytes`, but if packed to fill a 256 bit slot it is more expensive to declare
5. Structs
   1. 
6. Arrays and mappings
   1. 
7. Storage variable packing layout
   1. 
8. Immutable and constant keywords
9. Loading from storage to memory



### Function and contract execution

1. Math
   1. Incrementing values is cheapest by doing `variable++`;
   2. Doubling with Binary shifts are cheapest ` a = a<<2;` vs. using exponent math 
   3. Halving with Binary shifts are cheapest ` a = a>>10;` vs using exponent math
2. Error strings, Conditionals and short-circuiting, and error throwers
   1. Use simple and more likely scenario checks first
   2. Using `revert("message here")` is the same costs as `require(condition,"message here")`with `require` marginally more expensive to deploy
3. Function accessors
   1. declaring `external` is cheaper than declaring `public` by a tiny amount 
   2. using `calldata` for `external` is cheaper than `memory` for `external` or for `public` 
4. Modifiers vs. Requires
   1. Stack is limited with modifiers
   2. Modifiers save gas for contract deployment
5. Deleting data
6. Encoding data (hashing/encoding)
7. Call vs. DelegateCall
8. Assembly code

### Contract Design

1. Inheritance and Overrides
   1. If you are pressed to save gas, you may be able to skim some from your inherited contracts
   2. **Note** this does make your code messier and less reusable - perhaps a library may be better suited for some functions
2. Libraries
3. Deleting 
   1. Clearing up items you no longer use will return gas to you
4. Compiler optimisation
   1. The number of runs is to try optimise the number of times you expect the functions to be called
   2. The smaller the number, the cheaper the deploy
   3. The higher the number, in some cases, the cheaper the execute
5. Factory patterns
   1. Saves having to redeploy a new contract each time
6. EIP-1167 (Minimal proxy)
   1. Saves a lot of gas by cloning code 
   2. **Note** it is restricted to delegated calls

# Resources
(Another GitHub)[https://github.com/iskdrews/awesome-solidity-gas-optimization#medium--articles]

