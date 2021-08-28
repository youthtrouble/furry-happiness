// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20{
    address public minter;

    constructor() payable ERC20("fake token, boss", "DJI") {
        minter = msg.sender;
    }

    function mint(address _to, uint256 _amount) public {
        require(msg.sender == minter, 'Only minter can mint');

        _mint(_to, _amount);
    }
}