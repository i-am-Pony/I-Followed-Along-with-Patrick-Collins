// choose your license type
// SPDX-License-Identifier: MIT

// declare your compiler, amke sure it is compatible
// with any other contracts you plan to interact with
pragma solidity ^0.8.0;

// import the SimpleStorage contract to interact with
// and ensure proper functionality
import "./SimpleStorage.sol";

// name your contarct
contract StorageFactory {

// you can create an array like the one below for the
// function that follows it
    SimpleStorage[] public simpleStorageArray;

// this (in conjunction with the above array deploy a
// new contract within a contract and push (create) a
// and store a new simple storage each time you call it  
    function createSimplyStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    // whenever you interact with a contraxt you need 1) the address 2) the ABI
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // Address 
        // ABI 
        // SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(_simpleStorageNumber);
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
   }

// this creates public functions to get the contract address / number
   function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        // return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retrieve();
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }

}
