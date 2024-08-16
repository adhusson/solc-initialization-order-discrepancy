// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.6.2;
import "./console.sol";

contract Take {
    constructor(uint param) {
        console.log("Take sees %s.",param);
    }
}

contract Give {
    uint internal PARAM = 1;
}

contract C is Give,Take {
    constructor() Take(PARAM) {
        console.log("   C sees %s.",PARAM);
    }
}
