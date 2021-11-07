const DataTypes_uint_1 = artifacts.require('../DataTypes_uint_1');
const DataTypes_uint_2 = artifacts.require('../DataTypes_uint_2');
const DataTypes_uint_3 = artifacts.require('../DataTypes_uint_3');

contract('DataTypes_uint_1', (accounts) => {

  beforeEach(async () => {
   
  })

  it('Constructs and declares a uint8', async () => {
    instance = await DataTypes_uint_1.new();
  });

  it('Then sets the value for the first time', async () => {
    instance = await DataTypes_uint_1.new();
    await instance.SetInt();
  });

  it('Sets the value again', async () => {
    instance = await DataTypes_uint_1.new();
    await instance.SetInt();
    await instance.SetInt();
  });
});

contract('DataTypes_uint_2', (accounts) => {

  beforeEach(async () => {
   
  })

  it('Constructs and declares a uint256', async () => {
    instance = await DataTypes_uint_2.new();
  });

  it('Then sets the value for the first time', async () => {
    instance = await DataTypes_uint_2.new();
    await instance.SetInt();
  });

  it('Sets the value again', async () => {
    instance = await DataTypes_uint_2.new();
    await instance.SetInt();
    await instance.SetInt();
  });
});


contract('DataTypes_uint_3', (accounts) => {

  beforeEach(async () => {
   
  })

  it('Constructs and declares 3 items as uint256', async () => {
    instance = await DataTypes_uint_3.new();
  });

  it('Then sets the value first time for each time', async () => {
    instance = await DataTypes_uint_3.new();
    await instance.SetInt();
  });

  it('Then sets the values again', async () => {
    instance = await DataTypes_uint_3.new();
    await instance.SetInt();
    await instance.SetInt();
  });
});