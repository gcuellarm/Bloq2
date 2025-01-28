//Tres partes obligatorias en un smart contract: Licencia, versión y contrato

//orden en un contrato: 1º variables - 2ºModificadores - 3ºEventos - 4ºFunciones

//Licencia
//SPDX-License-Identifier: LGPL-3.0-only

//Version
pragma solidity 0.8.24;

//Contrato
contract ContratoTest{
    uint num1 = 1;
    int num2 = 2;

    string palabra = "hola";

    bool test = true;

    uint256[5] arraytest = [1,2,3,4,5];

    //mapping
    mapping(address => uint256) example23;

    //Enums
  //  enum Test {}

    //Structs
    struct Person {
        uint age;
        string name;
    }

    //Modificadores: piezas de código que se pueden incluir en una función para comprobar o asegurar un estado concreto.
    modifier modificador1{
      if (5 + 2 != 10) revert();
      _;
    }
    //el "_;" indica que en ese punto ejecuta la función, en el caso de arriba por ejemplo le decimos que compruebe que si 5 + 2 != 10 revierta y luego ejecute.
    //pero podríamos ponerlo al principio para que ejecute y luego compruebe si 5 + 2 != 10...


    //Eventos: nos aporta info de resultados de acciones en forma de logs
    event Multiplicacion(uint resultado);


    //Funciones (se seuelen escribir primero las external y luego las internal)

    //Estructura: function + nombre + argumentos + visibilidad + (modificadores) + valor devuelto
    //Visibilidad: se define desde dónde se puede llamar a nuestro contrato:
      // - external: exclusivamente desde otro contrato.
      // - internal: exclusivamente desde dentro de nuestro contrato. Permite a los contratos que hereden del padre usarlas
      // - public: desde dentro o fuera del contrato.
      // - private: es como internal pero solo permite llamar a las funciones del propio contrato.
      //cuando no se modifican variables externas a la función ni emite eventos pueden ponerse del tipo "pure"

    function multiplier(uint num1_, uint num2_) public modificador1 returns(uint resultado){
        resultado = num1_ * num2_;

        emit Multiplicacion(resultado);
        return resultado;
    }

    


}