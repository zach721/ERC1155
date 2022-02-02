// SPDX-License-Identifier: GPL-3.0
pragma solidity >0.8.0;

contract pokemon {
    mapping(address=>mapping(uint=>Pokemon)) public mypokemon;

struct Pokemon{
    string _name;
    string _type;
}

function getpokemon(uint id,string memory name, string memory types) public {
    mypokemon[msg.sender][id] = Pokemon(name,types);
}

}