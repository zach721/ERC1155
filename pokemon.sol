
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC1155/extensions/ERC1155Burnable.sol";
/// @custom:security-contact zach.saviour@gmail.com

contract PokemonERC721 is ERC1155, Ownable, ERC1155Burnable {
    uint256 nextid = 0;
    mapping(uint=>Pokemon) public mypokemon;

struct Pokemon{
    string _name;
    string _type;
}
    constructor(string memory uri_) ERC1155(uri_) {}
function mintpokemon(uint amount,string memory name_, string memory type_) public onlyOwner{
    _mint(msg.sender,nextid,amount,"");
    mypokemon[nextid++] = Pokemon(name_,type_);
    nextid++;
}
   function gettokendetails(uint256 tokenid) public view returns(Pokemon memory){
        return mypokemon[tokenid];
    }
    
}
