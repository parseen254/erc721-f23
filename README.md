# ERC721 NFT Project 🎨

[![CI](https://github.com/parseen254/erc721-f23/actions/workflows/test.yml/badge.svg)](https://github.com/parseen254/erc721-f23/actions/workflows/test.yml)

This project demonstrates building NFTs using the ERC721 standard, implemented with Foundry. 🚀

## What is this? 🤔

A simple yet powerful implementation of ERC721 tokens (NFTs) showcasing:

- Basic NFT minting functionality
- Token metadata handling
- Standard ERC721 interfaces
- Comprehensive test coverage

## Getting Started 🏃‍♂️

### Prerequisites

- Foundry installed on your machine
- Basic understanding of NFTs and ERC721

### Installation 🛠️

```bash
git clone <this-repo>
cd erc721-f23
forge install
```

## Development Commands 💻

### Build the project

```shell
forge build
```

### Run tests

```shell
forge test
```

### Format code

```shell
forge fmt
```

### Check gas usage

```shell
forge snapshot
```

### Local development

```shell
anvil
```

## Deployment 🚀

To deploy your NFT contract:

```shell
forge script script/DeployNFT.s.sol:DeployNFT --rpc-url <your_rpc_url> --private-key <your_private_key>
```

## Contributing 🤝

Feel free to submit issues and PRs!

## Resources 📚

- [Foundry Book](https://book.getfoundry.sh/)
- [OpenZeppelin ERC721 Docs](https://docs.openzeppelin.com/contracts/4.x/erc721)
- [EIP-721 Standard](https://eips.ethereum.org/EIPS/eip-721)


## MIT License ⚖️

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

