// SPDX-License-Identifier: MIT
pragma solidity ^0.7.3;

contract armazenamento{
    string qualquerTexto;

    function lerNumero() public view returns (string memory){
        return qualquerTexto;
    }
    function guardaNumero(string memory _texto) public returns (string memory){
        qualquerTexto = _texto; 
        _texto = "Outra coisa";
        return _texto;
    }

}