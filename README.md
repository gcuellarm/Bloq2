# First Steps: Bloq 2.

In this repository I will be uploading some of the exercises and projects that I am doing while learning with the Blockchain Accelerator Course with the aim of getting to know them fully and feel comfortable with this technology and data.




## 🚀Exercises

- **Calculator2.sol**: math exercises to manage data.
- **Cajero.sol**: 2 basic functions for an ATM Machine.
- **Users.sol**: to try to add a new user.


## 📋Descripción

A more detailed description of each exercise.

### 📐Calculator2.sol:
- The first *function* is the **"module"** function, which allows us calculate the remainder of a division (num % 2 = module). Although this can be a very simple operation, this could be of great help in other operations or even more complex functions (and so we'll see in the third function).
- With the second *function* or **"square"** function we will be able to raise a number to the power we need in each case. Given that in solidity we find no native function to do this, we'll have to do it using a for loop as it can be seen in the code.

- With the **"parOimpar"** *function*, a number can be sent to it, in order to know if a number is even or odd (or 0). As I mentioned before, this is a real implementation for the module function because if the module equals 0, then it means it is an even number and if it equals 1 it is an odd number.


### 🏧Cajero.sol:
The main idea of this Smart Contract is to simulate in a simple way, two of the functions that an ATM Machine has (deposit an withdraw money).
- As a *global variable* we have **"fondos"**, that we'll use to know the total amount of money we have.
- The first **"ingresar"** *external function*, calls the **"addition"** *private function* that adds the amount we write to the total amount of money we have.
- The second **"retirar"** *external function* has the same structure than the last one mentioned. It calls the **"substraction"** *private function* that subtracts the number we write to the total amount we have available.
- As a *modifier*, in the second function we use **"impossibleTransac"**, which will revert the function execution in case we want to withdraw more money than we already have available.


### 🔒Users.sol:
The main idea of this Smart Contract is to simulate a data base (in a very simple way for the exercise using an array) with users, trying to add a new one. In case the user was already in de DB, we will receive a message showing that the user already exists and, on the other hand, the user will be accepted and pushed into the array.
- The **"user"** *global variable* is an array that we will be using as a Data Base, storing strings (usernames) in it.
- The **"insert1"** *external function* receives a string as a parameter (new username). With the "for loop" we iterate the array mentioned before and check if the string received is already stored in the array. In that case we'll see a message showing that is already in use. On the other hand, we push the new username into the array showing a message of success.
- The **"shot"** *modifier* uses the "require" statement to check some conditions. In this case, the condition is that the username is longer than 3 letters. If this is not happening, the function will not execute, receiving a message that the username is too short.
- In solidity there is no ".length" that can be used for strings, so we use **"bytes(string).length"**.


## Tech Stack

**Client:** Solidity

**IDE:** Visual Studio Code, Remix IDE


## Authors

- [@gcuellarm](https://www.github.com/gcuellarm)
