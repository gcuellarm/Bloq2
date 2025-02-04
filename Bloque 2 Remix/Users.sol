// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

contract Users{

    //variables
     string[] public users = ["admin", "John12", "Manolete77", "gcuellar", "Carlos23"]; //posición 0 a 4

    //eventos


    //modifiers:
   modifier short(string memory user_){
        require(bytes(user_).length > 3, "El usuario es demasiado corto.");
        _;
   }

    //funciones

    //Externas
    //insertar un nuevo usuario y comprobar si ya existe
    function insert1(string memory user_) public short(user_) returns(string memory){
        for(uint i = 0; i < users.length; i++){
            if(keccak256(abi.encodePacked(users[i])) == keccak256(abi.encodePacked(user_))){
                return "El usuario ya existe, por favor introduce otro.";
            }      
        }
        users.push(user_);
        return "Nuevo usuario aceptado.";
    }

    



    //Internas

}