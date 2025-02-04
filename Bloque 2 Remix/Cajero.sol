//Licencia
//SPDX-License-Identifier: LGPL-3.0-only

    //version
pragma solidity 0.8.24;

contract Cajero{

    //variables
    uint public fondos = 35000;

    //eventos

    //modifiers
    modifier impossibleTransac(uint num1_){
        if(num1_> fondos) revert();
        _;

    }

    //Funciones
    //externas
    function ingresar(uint num1_) public returns(uint){
        fondos = addition(num1_);
        return fondos;

    }

    function retirar(uint num2_) public impossibleTransac(num2_)  returns(uint){
        fondos = substraction(num2_);
        return fondos;

    }


    //Internas
    //función de suma para ingresar dinero
    function addition(uint num1_) private view returns(uint resultadoAddition_){
        resultadoAddition_ = num1_ + fondos;

    }

    //función de resta para retirar dinero

    function substraction(uint num1_) private view returns(uint resultadoSubstraction_){
        resultadoSubstraction_ = fondos - num1_;

    }


   

}
