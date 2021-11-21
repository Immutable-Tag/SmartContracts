# SmartContracts

## Install Dependencies

### Node.js

Download the latest LTS version of Node.js from [here](https://nodejs.org/en/download/). The current latest LTS Version is 16.13.0 and it includes npm 8.1.0.

### Truffle

```bash
npm install -g truffle
```

To make sure that truffle is installed correctly, run the following command:

```bash
truffle version
```

This is the output I see:

```bash
Truffle v5.4.18 (core: 5.4.18)
Solidity v0.5.16 (solc-js)
Node v16.13.0
Web3.js v1.5.3
```

### Ganache

You can download the latest version of Ganache from [here](https://www.trufflesuite.com/ganache).

## Truffle project directory structure

- `contracts/`: Directory for Solidity contracts
- `migrations/`: Directory for scriptable deployment files
- `test/`: Directory for test files for testing your application and contracts
- `truffle-config.js`: Truffle configuration file

You can find more details in the [official Truffle documentation](https://www.trufflesuite.com/docs/truffle/getting-started/creating-a-project).

## Compiling Smart Contracts

To compile a Truffle project, change to the root of the directory where the project is located and then type the following into a terminal:

```bash
truffle compile
```

Artifacts of your compilation will be placed in the `build/contracts/` directory, relative to your project root.

You can find more details in the [official Truffle documentation](https://www.trufflesuite.com/docs/truffle/getting-started/compiling-contracts).

## Running Migrations

Migrations are JavaScript files that help you deploy contracts to the Ethereum network.

To run your migrations, run the following:

```bash
truffle migrate
```

This will run all migrations located within your project's `migrations/` directory.

You can find more details in the [official Truffle documentation](https://www.trufflesuite.com/docs/truffle/getting-started/running-migrations).

## Testing the Smart Contacts locally

To open the truffle development console:

```bash
truffle develop
```

Compile the contracts using this command:

```bash
truffle(develop)> compile
```

Migrate the compiled file to the chain using this command:

```bash
truffle(develop)> migrate
```

Store the instance of our contract in a variable:

```bash
truffle(develop)> let instance = await ImmutableTag.deployed()
```

We are using await because everything in blockchain is asynchronous and return a promise.

The createResult will hold the transaction.

```bash
truffle(develop)> let createResult = await instance.createTag("https://github.com/Immutable-Tag/SmartContacts", "v1.0.0", "66190b9fc987cb12c3a302c84123122e68ef6450")
undefined
```

```bash
truffle(develop)> createResult
{
  tx: '0x8ca80cbfbbcce9a94bfe8c5bd4a4f9361e7976ac931f4484c121098495626d8a',
  receipt: {
    transactionHash: '0x8ca80cbfbbcce9a94bfe8c5bd4a4f9361e7976ac931f4484c121098495626d8a',
    transactionIndex: 0,
    blockHash: '0x033c4218c55535ba927a549dc949cc5bcfa9cba82a122bfa3c3626938983217f',
    blockNumber: 5,
    from: '0x45484af60e5509701935ca1adaf611b15ad90517',
    to: '0x4e4ffa238f471e565e675b28e69b35682cd77107',
    gasUsed: 171469,
    cumulativeGasUsed: 171469,
    contractAddress: null,
    logs: [],
    status: true,
    logsBloom: '0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000',
    rawLogs: []
  },
  logs: []
}
```

Read from the mapping to check the content

```bash
truffle(develop)> let getResult = await instance.getTag("https://github.com/Immutable-Tag/SmartContacts", "v1.0.0")
undefined
```

```bash
truffle(develop)> getResult
[
  'https://github.com/Immutable-Tag/SmartContacts',
  'v1.0.0',
  '66190b9fc987cb12c3a302c84123122e68ef6450',
  repoURL: 'https://github.com/Immutable-Tag/SmartContacts',
  tagID: 'v1.0.0',
  commitHash: '66190b9fc987cb12c3a302c84123122e68ef6450'
]
```

```bash
truffle(develop)> getResult.commitHash
'66190b9fc987cb12c3a302c84123122e68ef6450'
truffle(develop)> getResult.tagID
'v1.0.0'
truffle(develop)> getResult.repoURL
'https://github.com/Immutable-Tag/SmartContacts'
```
Checking if a Tag exists in the Smart Contract

```bash
truffle(develop)> let checkResult = await instance.checkTag("https://github.com/Immutable-Tag/SmartContacts", "v1.0.0")
undefined
truffle(develop)> checkResult
true
```
To check the output if the tag id is changed for the createTag repoURL

```bash
truffle(develop)> let checkResult2 = await instance.checkTag("https://github.com/Immutable-Tag/SmartContacts", "v2.0.0")
undefined
truffle(develop)> checkResult2
false
```
To check the output if the repoURL is changed for the createTag tag id

```bash
truffle(develop)> let checkResult3 = await instance.checkTag("https://github.com/Immutable-Tag/Client", "v1.0.0")
undefined
truffle(develop)> checkResult3
false
```



