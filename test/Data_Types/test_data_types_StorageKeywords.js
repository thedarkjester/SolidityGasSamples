const StorageKeywords_1 = artifacts.require('../StorageKeywords_1');
const StorageKeywords_2 = artifacts.require('../StorageKeywords_2');
const StorageKeywords_3 = artifacts.require('../StorageKeywords_3');
const StorageKeywords_4 = artifacts.require('../StorageKeywords_4');


contract('StorageKeywords 1 default value :', (accounts) => {
  beforeEach(async () => {
   
  })

  it('is a value keyworded as a constant', async () => {
    instance = await StorageKeywords_1.new();
  });
});


contract('StorageKeywords 2 default value :', (accounts) => {
  beforeEach(async () => {
   
  })

  it('is a value keyworded as immutable', async () => {
    instance = await StorageKeywords_2.new();
  });
});


contract('StorageKeywords 3 regular value :', (accounts) => {
  beforeEach(async () => {
   
  })

  it('is assigned value on construction', async () => {
    instance = await StorageKeywords_3.new("0x63616e6469646174653100000000000000000000000000000000000000000000");
  });
});

contract('StorageKeywords 4 immutable  bytes32:', (accounts) => {
  beforeEach(async () => {
   
  })

  it('is assigned value on construction', async () => {
    instance = await StorageKeywords_4.new("0x63616e6469646174653100000000000000000000000000000000000000000000");
  });
});