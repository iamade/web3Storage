//SPDX-License-Identifier: MIT
pragma solidity 0.8.24; // Solidity version

contract SimpleStorage{
    uint256 myFavoriteNumber; // 0

    //uint256[]
    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    //dynamic array
    Person[] public listOfPeople; //[]

    //chelsea -> 232
    mapping(string => uint256) public nameToFavoriteNumber; 

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    //view, pure
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

}