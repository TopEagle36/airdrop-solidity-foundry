// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Airdrop.sol";

contract ContractTest is Test {

    Airdrop drop;
    address[3] fixedArray;
    address testAddr1 = makeAddr("Test1");
    address testAddr2 = makeAddr("Test2");
    address testAddr3 = makeAddr("Test3");
    function setUp() public {}
    address[] dynamicArray = [testAddr1, testAddr2, testAddr3];


    function testDistributeEth() public returns (uint256) {
        drop.distrubuteEther(dynamicArray, 6000000000);
        assertEq(testAddr1.balance, testAddr2.balance);
        assertEq(testAddr2.balance, testAddr3.balance);
        assertEq(testAddr3.balance, 2000000000);
        return 3;
    }
}
