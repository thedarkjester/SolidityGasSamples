const StringsVsBytes_1 = artifacts.require('../StringsVsBytes_1');
const StringsVsBytes_2 = artifacts.require('../StringsVsBytes_2');
const StringsVsBytes_3 = artifacts.require('../StringsVsBytes_3');
const StringsVsBytes_4 = artifacts.require('../StringsVsBytes_4');


contract('StringsVsBytes 1 default value :', (accounts) => {
  beforeEach(async () => {
   
  })

  it('constructs with an empty string field', async () => {
    instance = await StringsVsBytes_1.new();
  });

  it('sets the string to a string of 32 length', async () => {
    await instance.SetString();
  });

  it('gets the string', async () => {
   let str = await instance.GetString();
  });
});

contract('StringsVsBytes 2 default value :', (accounts) => {
  beforeEach(async () => {
   
  })

  it('constructs with an empty bytes32 field', async () => {
    instance = await StringsVsBytes_2.new();
  });

  it('sets the bytes32 to a value of 32 length', async () => {
    await instance.SetString();
  });

  it('gets the string', async () => {
   let str = await instance.GetString();
  });
});

contract('StringsVsBytes 3 - 2 bytes16 values :', (accounts) => {
  beforeEach(async () => {
    instance = await StringsVsBytes_3.new();
  })

  it('constructs with two empty bytes16 values', async () => {
    instanceConstruct = await StringsVsBytes_3.new();
  });

  it('sets the bytes16 to a value of 16 length', async () => {
    await instance.SetString();
  });

  it('gets the string', async () => {
   let str = await instance.GetString();
  });
});

contract('StringsVsBytes 4 - 2 bytes32 values :', (accounts) => {
  beforeEach(async () => {
    instance = await StringsVsBytes_4.new();
  })

  it('constructs with two empty bytes32 values', async () => {
    instanceConstruct = await StringsVsBytes_4.new();
  });

  it('sets the bytes32 to a value of 32 length', async () => {
    await instance.SetString();
  });

  it('gets the string', async () => {
   let str = await instance.GetString();
  });
});