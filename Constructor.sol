// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract A{
    uint _totalSupply;
    uint _decimals;
    address admin;
// Constructor e executado antes do contrato ser criado
    constructor(uint initialSupply){
        _decimals = 18;
        admin = msg.sender;
        _totalSupply = initialSupply;
    }

    function getSupply() external view returns(uint){
        return _totalSupply;
    }
}
contract B is A{
    constructor (uint initialSupply,uint _valorB) A(initialSupply){

    }
}