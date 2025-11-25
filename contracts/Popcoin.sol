// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/// @title Popcoin Token
/// @author Agustin Acosta
/// @notice A basic fixed-supply ERC20 token
contract Popcoin is ERC20 {

    /// @notice Mints the initial supply to the deployer upon construction
    /// @param _name The name of the token
    /// @param _symbol The symbol of the token
    /// @param _initialSupply The amount of tokens to mint (in whole units, not wei)
    constructor(string memory _name, string memory _symbol, uint256 _initialSupply) ERC20(_name, _symbol) {
        // Improvement: Make supply dynamic instead of hardcoded
        // We multiply by 10**decimals() (default 18) to handle the units correctly
        _mint(msg.sender, _initialSupply * 10**decimals());
    }
}