// SPDX-License-Identifier: MIT
pragma solidity ^0.7.3;
//modifiers sao regras
contract modificadores{
    uint supply = 10;
    address admin = msg.sender;

    function getSupply() external view returns(uint){
        return supply;
    }
    function mint(uint _valor) external onlyAdmin() somenteValor(_valor){
        supply += _valor;
    }

    modifier onlyAdmin(){
        require (msg.sender == admin, "Nao e o admin"); //require se reornar true ele continua o codigo se nao quebra o codigo
        _; // significa execute o codigo que vem depois

    }

    modifier somenteValor(uint _valor){
        require(_valor == 10,"erro");
        _;
    }
}