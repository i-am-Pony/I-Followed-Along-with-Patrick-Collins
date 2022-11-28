// SPDX-License-Identifier: MIT

// difine the compiler you used
pragma solidity ^0.8.8;

contract SimpleStorage {
    
    //this will initialize to 0
    uint256 favoriteNumber;
    
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;

    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

}
