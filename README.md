# Proyectos Personales Bloque 2

En este repositorio dejaré algunos de los ejercicios y proyectos que voy haciendo al mismo tiempo que el curso de Blockchain Accelerator para utilizar y consolidar los conocimientos de este bloque.




## 🚀Ejercicios

- **Calculator2.sol**: operaciones y ejercicios matemáticos adicionales a los ya vistos.
- **Cajero.sol**: 2 funcionalidades básicas en el funcionamiento de un cajero.
- **Users.sol**: intentar añadir un usuario.


## 📋Descripción

Una descripción un poco más detallada de cada ejercicio.

### 📐Calculator2.sol:
- La primera *función* de ellas es la función **"module"**, que nos permite calcular el módulo de un número, es decir, el cociente que resulta de una división (num % 2 = modulo). Esto, aunque sencillo, puede sernos de gran ayuda en otras operaciones y funcionalidades más complejas (como veremos en la tercera función del contrato).
- Con la segunda *función* o función **"square"** podremos elevar un número que indiquemos a la potencia que queramos. Puesto que en solidity no hay una función para elevar a una potencia como en otros lenguajes, tendremos que hacerlo mediante un bucle for como vemos en el código.
- Con la tercera *función* **"parOimpar"**, podremos pasarle un número y saber si es par, impar o 0 (ya que el 0 puede tener ciertos problemas matemáticamente hablando). Esta sería una posible implementación de calcular el módulo de un número, ya que si el módulo del número es 0, significa que es par y si es 1 significa que es impar. 


### 🏧Cajero.sol:
La idea de este contrato es simular de forma sencilla y simple las dos principales funciones que tiene un cajero para un usuario (ingresar y retirar dinero).
- Tendremos como *variable global* **"fondos"**, que nos servirá para conocer el total de dinero del que disponemos para nuestras dos funciones.
- La primera *función externa* **"ingresar"** básicamente llama a nuestra función privada "addition", cuyo propósito es hacer la suma de la cantidad que indiquemos en la operación de ingresar y de los fondos totales de los que disponemos.
- La segunda *función* **"retirar"** tiene el mismo mecanismo que la anterior, llama a la privada "substraction", que resta a los fondos totales de los que disponemos la cantidad que queremos retirar del cajero.
- Como *modificador*, en la función de retirar dinero, tenemos **"impossibleTransac"**, que nos revierte la función en caso de que queramos retirar una cantidad de dinero superior a la que tenemos en los fondos totales.


### 🔒Users.sol:
La idea de este smart contract es simular una base de datos (de forma simple con un array) de usuarios, intentando introducir uno nuevo. En caso de que el usuario ya se encuentre registrado recibiremos un mensaje de que ya existe y en caso contrario será aceptado y añadido.
- La *variable global* **user** es un array que para este caso práctico sencillo hace las veces de "base de datos", almacenando una serie de strings (nombres de usuario) en él.
- La *función externa* **"insert1"**, recibe como parámetro un string (el nombre del usuario). Con el bucle for recorremos el array mencionado anteriormente y comprobamos que el string introducido se encuentre dentro, en cuyo caso nos lo mostrará mediante texto. En caso contrario, hacemos push de ese string al array y nos muestra un mensaje de que se acepta.
- El *modifier* **short** utiliza un require para obligar o requerir que ocurran ciertas condiciones, en este caso que el string introducido sea mayor de 3 caracteres. Si esto no se cumple, la función no se ejecutará y recibiremos el mensaje de que el usuario es demasiado corto.
- Como en solidity no podemos usar ".length" como en otros lenguajes para el string, usaremos la opción **"bytes(string).length"**.
## Tech Stack

**Client:** Solidity

**IDE:** Visual Studio Code, Remix IDE


## Authors

- [@gcuellarm](https://www.github.com/gcuellarm)

