let catchRevert = require("../exceptions_helper.js").catchRevert;

const Arrays_And_Mappings_1 = artifacts.require('../Arrays_And_Mappings_1');
const Arrays_And_Mappings_2 = artifacts.require('../Arrays_And_Mappings_2');

contract('Adds one entry to an array and evaluates in the array', (accounts) => {
  beforeEach(async () => {
    instance = await Arrays_And_Mappings_1.new([]);
    await instance.AddOwner({from:accounts[0]});
  })

  it('Constructs the contract and array', async () => {
    instanceConstruct = await Arrays_And_Mappings_1.new([]);
  });

  it('Constructs and sets the owner', async () => {
    instanceConstruct = await Arrays_And_Mappings_1.new([]);
    await instanceConstruct.AddOwner({from:accounts[0]});
  });

  
  it('Checks the found owner', async () => {
    await instance.CheckOwner({from:accounts[0]});
  });

  it('Checks the non-found owner', async () => {
    await instance.AddOwner({from:accounts[0]});
    await catchRevert(instance.CheckOwner({from:accounts[1]}));
  });
});

contract('Adds one entry to an array and evaluates in the mapping', (accounts) => {
  beforeEach(async () => {
    instance = await Arrays_And_Mappings_2.new([]);
    await instance.AddOwner({from:accounts[0]});
  })

  it('Constructs the contract and array', async () => {
    instanceConstruct = await Arrays_And_Mappings_2.new([]);
  });

  it('Constructs and Sets the owner', async () => {
    instanceConstruct = await Arrays_And_Mappings_2.new([]);
    await instanceConstruct.AddOwner({from:accounts[0]});
  });
  
  it('Checks the found owner', async () => {
    await instance.CheckOwner({from:accounts[0]});
  });

  it('Checks the non-found owner', async () => {
    await instance.AddOwner({from:accounts[0]});
    await catchRevert(instance.CheckOwner({from:accounts[1]}));
  });
});

contract('Adds 5 entries to an array and evaluates in the array', (accounts) => {
  beforeEach(async () => {
    instance = await Arrays_And_Mappings_1.new([accounts[0],accounts[1],accounts[2],accounts[3],accounts[4]]);
  })

  it('Constructs the contract and array', async () => {
    instanceConstruct = await Arrays_And_Mappings_1.new([accounts[0],accounts[1],accounts[2],accounts[3],accounts[4]]);
  });

  it('Checks the first found owner', async () => {
    await instance.CheckOwner({from:accounts[0]});
  });

  it('Checks the last found owner', async () => {
    await instance.CheckOwner({from:accounts[4]});
  });

  it('Checks the non-found owner', async () => {
    await catchRevert(instance.CheckOwner({from:accounts[5]}));
  });
});

contract('Adds 5 entries to an array and evaluates in the mapping', (accounts) => {
  beforeEach(async () => {
    instance = await Arrays_And_Mappings_2.new([accounts[0],accounts[1],accounts[2],accounts[3],accounts[4]]);
  })

  it('Constructs the contract and array', async () => {
    instanceConstruct = await Arrays_And_Mappings_1.new([accounts[0],accounts[1],accounts[2],accounts[3],accounts[4]]);
  });

  it('Checks the first found owner', async () => {
    await instance.CheckOwner({from:accounts[0]});
  });

  it('Checks the last found owner', async () => {
    await instance.CheckOwner({from:accounts[4]});
  });

  it('Checks the non-found owner', async () => {
    await catchRevert(instance.CheckOwner({from:accounts[5]}));
  });
});