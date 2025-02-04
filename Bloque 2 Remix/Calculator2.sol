//Licencia
//SPDX-License-Identifier: LGPL-3.0-only

//Version
pragma solidity 0.8.24;


//Contrato
contract Calculator2{

    //variables
    string par = "El numero es par.";
    string impar = "El numero es impar.";

    //modifiers

    //events
    event moduleEvent(uint num1_, uint resultadoModule_);
    event squareEvent(uint base_, uint exponent_, uint resultadoSquare_);


    //External functions
    //Esta función sirve para calcular el módulo, es decir, el resto de la división de dos números
    function module(uint256 num1_) public returns(uint resultadoModule_){
        resultadoModule_ = num1_ % 2;
        emit moduleEvent(num1_, resultadoModule_);
    }

    function square(uint256 base_, uint exponent_) public returns(uint resultadoSquare_){
        resultadoSquare_ = 1;
        for (uint i = 0 ; i < exponent_; i++){
            resultadoSquare_ *= base_;
        }
        //return resultadoSquare_;
        emit squareEvent(base_, exponent_, resultadoSquare_);
    }

   
    //Esta función nos indica si un número es par o impar calculando su módulo
   function parOimpar(uint num1_) public view returns(string memory){
        num1_ % 2;
        if (num1_ == 0){
            return  "El numero no es ni par ni impar, igualdad (0).";
        } 
        if(num1_ % 2 == 0){
            return par;
        }else {
            return impar;
        }
        
    }



    //Internal functions
    

    
}
