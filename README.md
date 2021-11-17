# Solidity Gas Comparison Samples
This is to illustrate different ways to optimise gas - what to do and what not to do

# What it covers
1. Data Types
2. Functions and contract execution
3. Contract design

## How is it laid out

The solution is comprised of multiple solidity `.sol` files. Each of these files will contain more than one contract in them with usage permutations to illustrate how much gas is used for Deployment and sometimes how much gas is used for executing a transaction. Some of the contracts pertain to storage costs.

## How to use the contracts

1. Open the `.sol` file and copy the contents
2. Go to [Remix](https://remix.ethereum.org/), create a new `.sol` file, and paste the contents
3. It is generally best to clear out the log output and previously deployed contracts for ease of use
4. For each of these contracts (note: each contract should only differ by the implementation, and care has been taken to avoid misleading costs - please submit a PR if you find something that makes the output comparison inaccurate)
   1. Turn the optimiser off
   2. Deploy the contract (with the JavaScript VM - the object is for gas cost comparison)
   3. View the gas costs and take note of this cost (some `.sol` files will have some numbers at the top prepopulated in the format of `deploy cost - execution cost`)
   4. If there are some functions, execute the function(s) there
   5. Take note of the gas costs for the function(s)
   6. Compare the gas costs against each contract implementation to gain insight into how they differ (each line reconstructs the contract, so deduct the construction cost as seen in the first test output line)
   7. Take the difference and see the `$` value - by inputting it at [https://www.cryps.info/en/Gwei_to_USD](https://www.cryps.info/en/Gwei_to_USD) 
   8. Turn the optimiser on and repeat steps 2-7 to optimise deploy or execution

An alternate approach is to run the tests pointing a chain instance (ganache UI etc.) and view the test outputs and the gas report and then examine what the tests are doing. Note: this is a work in progress. Additionally, each test line constructs the contract anew, so be sure to check the gas report to see actual execution costs. 

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
   1. Fixed `bytes` are cheaper to deploy and use over strings ( e.g. `bytes32` vs. string ) (note: you are limited to the size you define)
   2. Similar to `uint` declarations, it is cheaper to use smaller sized `bytes`, but if packed to fill a 256 bit slot it is more expensive to declare
5. Structs
   1. If doing calculations or using a temporary struct, a tuple may be better
   2. Passing structs is cheaper than passing multiple variables
6. Arrays and mappings
   1. Try use `mapping`s for conditional checks - looping is expensive
   2. Arrays can be used for purely listing objects/collections (also consider off chain hashed files)
7. Storage variable packing layout
   1. Try combine variables to use 256bit storage spaces
   2. Sometimes the order makes little difference on deploy, but setting values it does.
      1. It oddly is more expensive (a little) to have `uint256, uint128, uint128` than `uint128, uint128, uint256`, however the setting is still cheaper than (a lot) `uint128, uint256, uint128` as that uses two vs. three slots.
   3. Bools can be broken down into single bits vs. char if really required
8. Immutable and constant keywords
   1. `constant` is cheapest if you don't intend it to change
   2. `Immutable` is cheaper than normal if you only set it on the constructor and never again
9. Loading from storage to memory
   1. Try use `memory` where possible over storage
   2. Try use `calldata` if an `external` function over `memory`

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
5. Deleting 
   1. Clearing up items you no longer use will return gas to you
6. Assembly code // TBC

### Contract Design

1. Inheritance and Overrides
   1. If you are pressed to save gas, you may be able to skim some from your inherited contracts
   2. **Note** this does make your code messier and less reusable - perhaps a library may be better suited for some functions
2. Libraries
   1. When included in the same metadata and compiled together, then makes little difference and is more expensive
   2. When deployed independently it works out cheaper if reused many times
   3. **Note:** you will need to turn deploy the library separately, set the address in the metadata and then turn off the `autoDeployLib` off
3. Compiler optimisation
   1. The number of runs is to try optimise the number of times you expect the functions to be called
   2. The smaller the number, the cheaper the deploy
   3. The higher the number, in some cases, the cheaper the execute
4. Factory patterns
   1. Saves having to redeploy a new contract each time
5. EIP-1167 (Minimal proxy)
   1. Saves a lot of gas by cloning code 1
   2. **Note** it is restricted to delegated calls

# Resources
(Another GitHub)[https://github.com/iskdrews/awesome-solidity-gas-optimization#medium--articles]

