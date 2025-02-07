// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Base64.sol";

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
        string memory baseUrl = "https://api.dicebear.com/9.x/thumbs/svg?seed=";
        string memory imageUrl = string.concat(baseUrl, Strings.toString(tokenId));

        // Create the JSON metadata
        bytes memory json = abi.encodePacked(
            '{"name": "BasicNFT #',
            Strings.toString(tokenId),
            '", "description": "An NFT from the BasicNFT collection", ',
            '"image": "',
            imageUrl,
            '"}'
        );

        // Base64 encode the JSON
        string memory base64Json = Base64.encode(json);
        return string.concat("data:application/json;base64,", base64Json);
    }
}
