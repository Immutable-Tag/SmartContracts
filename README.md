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
