// SPDX-License-Identifier: MIT
pragma solidity ^0.7.3;

contract eventos{
    event Transferencia(address _dequem,address _paraonde, uint256 _quantidade);

    function transfer(address _praquem, uint256 _quantidade)public {
        emit Transferencia(msg.sender, _praquem, _quantidade);

    }
}