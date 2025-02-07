// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import {BasicNFT} from "../src/BasicNFT.sol";
import {DeployBasicNFT} from "../script/DeployBasicNFT.s.sol";
import {console} from "forge-std/console.sol";

contract TestBasicNFT is Test {
    BasicNFT public basicNFT;
    DeployBasicNFT public deployer;
    address user = address(0x1);

    function setUp() public {
        deployer = new DeployBasicNFT();
        basicNFT = deployer.run();
    }

    function testNameIsCorrect() public view {
        assertEq(basicNFT.name(), "BasicNFT");
    }

    function testCanMintAndHaveABalance() public {
        vm.prank(user);
        basicNFT.mintNFT(user);
        assertEq(basicNFT.balanceOf(user), 1);
        // Get tokenURI for this nft and console it
        string memory tokenURI = basicNFT.tokenURI(0);
        console.log(tokenURI); // can be viewed on running $forge test -vvv
    }
}
