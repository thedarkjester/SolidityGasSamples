const DataTypes_uint_1 = artifacts.require('../DataTypes_uint_1');
const DataTypes_uint_2 = artifacts.require('../DataTypes_uint_2');
const DataTypes_uint_3 = artifacts.require('../DataTypes_uint_3');
const DataTypes_uint_4 = artifacts.require('../DataTypes_uint_4');
const DataTypes_uint_5 = artifacts.require('../DataTypes_uint_5');
const DataTypes_uint_6 = artifacts.require('../DataTypes_uint_6');

contract('Compares 1 uint : defined as uint8', (accounts) => {
  beforeEach(async () => {
    instance = await DataTypes_uint_1.new();
  })

  it('Constructs and declares a uint8', async () => {
    instanceConstruct = await DataTypes_uint_1.new();
  });

  it('Then sets the value for the first time', async () => {
    await instance.SetInt();
  });

  it('Sets the value again', async () => {
    await instance.SetInt();
    await instance.SetInt();
  });
});

contract('Compares 1 uint : defined as uint256', (accounts) => {
  beforeEach(async () => {
    instance = await DataTypes_uint_2.new();
  })

  it('Constructs and declares a uint256', async () => {
    instanceConstruct = await DataTypes_uint_2.new();
  });

  it('Then sets the value for the first time', async () => {
    await instance.SetInt();
  });

  it('Sets the value again', async () => {
    await instance.SetInt();
    await instance.SetInt();
  });
});


contract('Compares 3 items defined as uint256', (accounts) => {
  beforeEach(async () => {
    instance = await DataTypes_uint_3.new();
  })

  it('Constructs and declares 3 items as uint256', async () => {
    instanceConstruct = await DataTypes_uint_3.new();
  });

  it('Then sets the value first time for each time', async () => {
    await instance.SetInt();
  });

  it('Then sets the values again', async () => {
    await instance.SetInt();
    await instance.SetInt();
  });
});

contract('Compares 3 items defined as uint', (accounts) => {
  beforeEach(async () => {
    instance = await DataTypes_uint_4.new();
  })

  it('Constructs and declares 3 items as uint without 256', async () => {
    instanceConstruct = await DataTypes_uint_4.new();
  });

  it('Then sets the value first time for each time', async () => {
    await instance.SetInt();
  });

  it('Then sets the values again', async () => {
    await instance.SetInt();
    await instance.SetInt();
  });
});


contract('Compares casting for 2 values : uint256', (accounts) => {
  beforeEach(async () => {
    instance = await DataTypes_uint_5.new();
  })

  it('Constructs and declares 2 items as uint256', async () => {
    instanceConstruct = await DataTypes_uint_5.new();
  });

  it('Then sets the value first time for each time', async () => {
    await instance.SetInt();
  });

  it('Then sets the values again', async () => {
    await instance.SetInt();
    await instance.SetInt();
  });
});

contract('Compares casting for 2 values : uint128 (compare to uint8)', (accounts) => {
  beforeEach(async () => {
    instance = await DataTypes_uint_6.new();
  })

  it('Constructs and declares 2 items as uint128', async () => {
    instanceConstruct = await DataTypes_uint_6.new();
  });

  it('Then sets the value first time for each time', async () => {
    await instance.SetInt();
  });

  it('Then sets the values again', async () => {
    await instance.SetInt();
    await instance.SetInt();
  });
});