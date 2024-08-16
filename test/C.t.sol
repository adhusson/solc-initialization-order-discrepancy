// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.6.2;

import "../src/C.sol";

contract CounterTest {
    function testInitOrder() public {
        new C();
    }
}
