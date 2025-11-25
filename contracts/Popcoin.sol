// SPDX-License-Identifier: LPGL-3.0-only
pragma solidity 0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Popcoin is ERC20 {

    constructor(string memory _name, string memory _symbol) ERC20(_name,_symbol){
        _mint(msg.sender, 1000 * 1e18);
    }

}