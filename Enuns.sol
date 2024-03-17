// SPDX-License-Identifier: MIT
pragma solidity ^0.7.3;

contract Enuns{

    enum ESTADO{ATIVO,INATIVO,CANCELADO,CADASTRADO}
    mapping (address => ESTADO) usuario;

    function addUsers() external {
        usuario[msg.sender] = ESTADO.CADASTRADO;
    }
    function getUser() external view returns (ESTADO){
        return usuario[msg.sender];
    }
    function calcula(uint _a,uint _b) external returns (uint){
        require(usuario[msg.sender] == ESTADO.CADASTRADO,"usuario nao cadastrado");

        uint resultado = _a + _b;
        usuario[msg.sender] = ESTADO.ATIVO;
        return resultado;
    }
}



