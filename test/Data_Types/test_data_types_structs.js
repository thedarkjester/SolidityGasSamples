const Structs_1 = artifacts.require('../Structs_1');
const Structs_2 = artifacts.require('../Structs_2');
const Structs_3 = artifacts.require('../Structs_3');
const Structs_4 = artifacts.require('../Structs_4');
const Structs_5 = artifacts.require('../Structs_5');
const Structs_6 = artifacts.require('../Structs_6');
const Structs_7 = artifacts.require('../Structs_7');
const Structs_8 = artifacts.require('../Structs_8');
const Structs_9 = artifacts.require('../Structs_9');
const Structs_10 = artifacts.require('../Structs_10');

contract('Struct 1 : uses a tuple for in-memory use', (accounts) => {
  beforeEach(async () => {
    instance = await Structs_1.new();
  })

  it('Constructs and defines a struct', async () => {
    instanceConstruct = await Structs_1.new();
  });

  it('and then creates a new dynamic tuple to use ', async () => {
    await instance.InMemoryUsage();
  });
});

contract('Struct 2 : uses a constructed initialised struct', (accounts) => {
  beforeEach(async () => {
    instance = await Structs_2.new();
  })

  it('Constructs and defines a struct', async () => {
    instanceConstruct = await Structs_2.new();
  });

  it('and then creates a new dynamic tuple to use ', async () => {
    await instance.InMemoryUsage();
  });
});

contract('Struct 3 : uses a default value struct from storage', (accounts) => {
  beforeEach(async () => {
    instance = await Structs_3.new();
  })

  it('Constructs and defines a struct', async () => {
    instanceConstruct = await Structs_3.new();
  });

  it('and then sets values of an existing storage struct', async () => {
    await instance.InMemoryUsage();
  });
});

contract('Struct 4 : uses an in-memory struct settings properties (non-constructor)', (accounts) => {
  beforeEach(async () => {
    instance = await Structs_4.new();
  })

  it('Constructs and defines a struct', async () => {
    instanceConstruct = await Structs_4.new();
  });

  it('and then sets values of a default-value in-memory storage struct', async () => {
    await instance.InMemoryUsage();
  });
});

contract('Struct 5 : constructs an in-memory struct with named parameters', (accounts) => {
  beforeEach(async () => {
    instance = await Structs_5.new();
  })

  it('Constructs and defines a struct', async () => {
    instanceConstruct = await Structs_5.new();
  });

  it('and then constructs an in-memory storage struct with named parameters', async () => {
    await instance.InMemoryUsage();
  });
});

contract('Struct 6 : assigns an in-memory, updated from default value struct to storage', (accounts) => {
  beforeEach(async () => {
    instance = await Structs_6.new();
  })

  it('Constructs and defines a struct', async () => {
    instanceConstruct = await Structs_6.new();
  });

  it('and then sets the values of an in-memory storage and assigns struct to storage', async () => {
    await instance.InMemoryUsage();
  });
});

contract('Struct 7 : assigns a value constructed struct to storage struct (compare to 6)', (accounts) => {
  beforeEach(async () => {
    instance = await Structs_7.new();
  })

  it('Constructs and defines a struct', async () => {
    instanceConstruct = await Structs_7.new();
  });

  it('and then sets the values of a constructed struct and assigns struct to storage', async () => {
    await instance.InMemoryUsage();
  });
});

contract('Struct 8 : passes an in-memory struct to a child function', (accounts) => {
  beforeEach(async () => {
    instance = await Structs_8.new();
  })

  it('Constructs and defines a struct', async () => {
    instanceConstruct = await Structs_8.new();
  });

  it('and then sets the values of a constructed struct and passes to a child function', async () => {
    await instance.InMemoryUsage();
  });
});

contract('Struct 9 : passes discrete values a child function (vs. _8)', (accounts) => {
  beforeEach(async () => {
    instance = await Structs_9.new();
  })

  it('Constructs and defines a struct', async () => {
    instanceConstruct = await Structs_9.new();
  });

  it('and then sets the values of a constructed struct and passes discrete values to a child function', async () => {
    await instance.InMemoryUsage();
  });
});

contract('Struct 10 : passes referenced in-memory struct to a child function (vs. _9)', (accounts) => {
  beforeEach(async () => {
    instance = await Structs_10.new();
  })

  it('Constructs and defines a struct', async () => {
    instanceConstruct = await Structs_10.new();
  });

  it('and then sets the values of a constructed struct and passes discrete values referenced in the struct', async () => {
    await instance.InMemoryUsage();
  });
});