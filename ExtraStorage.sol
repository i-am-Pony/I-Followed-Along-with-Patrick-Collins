// state your license
/// /// SPDX-License-Identifier: MIT

// choose your compiler 
pragma solidity 0.8.7;

import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage {

// In this functon we want to add +5 to our number.
// using override & virtual override we can override
// undesirable funtions from parent contract
function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    }
}
