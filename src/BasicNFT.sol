// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BasicNFT is ERC721 {
    uint256 private s_tokenCounter;

    constructor() ERC721("BasicNFT", "BNFT") {
        s_tokenCounter = 0;
    }

    function mintNFT(address to) public {
        _safeMint(to, s_tokenCounter);
        s_tokenCounter++;
    }

    function tokenURI(uint256 tokenId) public pure override returns (string memory) {
        return string(abi.encodePacked("https://api.dicebear.com/9.x/thumbs/svg?seed=", tokenId));
    }
}
