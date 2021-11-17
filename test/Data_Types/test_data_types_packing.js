const DataTypes_packed_1 = artifacts.require('../DataTypes_packed_1');
const DataTypes_packed_2 = artifacts.require('../DataTypes_packed_2');
const DataTypes_packed_3 = artifacts.require('../DataTypes_packed_3');
const DataTypes_packed_4 = artifacts.require('../DataTypes_packed_4');
const DataTypes_packed_5 = artifacts.require('../DataTypes_packed_5');
const DataTypes_packed_6 = artifacts.require('../DataTypes_packed_6');
const DataTypes_packed_7 = artifacts.require('../DataTypes_packed_7');
const DataTypes_packed_8 = artifacts.require('../DataTypes_packed_8');
const DataTypes_packed_9 = artifacts.require('../DataTypes_packed_9');
const DataTypes_packed_10 = artifacts.require('../DataTypes_packed_10');
const DataTypes_packed_11 = artifacts.require('../DataTypes_packed_11');
const DataTypes_packed_12 = artifacts.require('../DataTypes_packed_12');

contract('Comparison 1: uint128,256,128 - 3 storage slots', (accounts) => {
  beforeEach(async () => {
    instance = await DataTypes_packed_1.new();
  })

  it('Constructs the contract - storage costs', async () => {
    instanceConstruct = await DataTypes_packed_1.new();
  });

  it('Sets the values', async () => {
    await instance.SetInts();
  });

  it('Sets the values twice', async () => {
    await instance.SetInts();
    await instance.SetInts();
  });
});

contract('Comparison 2: uint256,128,128 - 2 storage slots', (accounts) => {
  beforeEach(async () => {
    instance = await DataTypes_packed_2.new();
  })

  it('Constructs the contract - storage costs', async () => {
    instanceConstruct = await DataTypes_packed_2.new();
  });

  it('Sets the values', async () => {
    await instance.SetInts();
  });

  it('Sets the values twice', async () => {
    await instance.SetInts();
    await instance.SetInts();
  });
});

contract('Comparison 3: uint128,128,256 - 2 storage slots', (accounts) => {
  beforeEach(async () => {
    instance = await DataTypes_packed_3.new();
  })

  it('Constructs the contract - storage costs', async () => {
    instanceConstruct = await DataTypes_packed_3.new();
  });

  it('Sets the values', async () => {
    await instance.SetInts();
  });

  it('Sets the values twice', async () => {
    await instance.SetInts();
    await instance.SetInts();
  });
});

contract('Comparison 4: uint128,128,256 + struct bytes16,32,16', (accounts) => {
  beforeEach(async () => {
    instance = await DataTypes_packed_4.new();
  })

  it('Constructs the contract - storage costs', async () => {
    instanceConstruct = await DataTypes_packed_4.new();
  });

  it('Sets the values', async () => {
    await instance.SetVals();
  });

  it('Sets the values twice', async () => {
    await instance.SetVals();
    await instance.SetVals();
  });
});

contract('Comparison 5: uint128,128,256 + struct bytes16,16,32', (accounts) => {
  beforeEach(async () => {
    instance = await DataTypes_packed_5.new();
  })

  it('Constructs the contract - storage costs', async () => {
    instanceConstruct = await DataTypes_packed_5.new();
  });

  it('Sets the values', async () => {
    await instance.SetVals();
  });

  it('Sets the values twice', async () => {
    await instance.SetVals();
    await instance.SetVals();
  });
});

contract('Comparison 6: uint128,128,256 + struct bytes32,16,16', (accounts) => {
  beforeEach(async () => {
    instance = await DataTypes_packed_6.new();
  })

  it('Constructs the contract - storage costs', async () => {
    instanceConstruct = await DataTypes_packed_6.new();
  });

  it('Sets the values', async () => {
    await instance.SetVals();
  });

  it('Sets the values twice', async () => {
    await instance.SetVals();
    await instance.SetVals();
  });
});