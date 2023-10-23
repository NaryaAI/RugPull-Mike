// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./Mike.sol";

contract MikeWarpToTest {
    Mike mike;
    address owner;

    constructor(address _owner) public {
        owner = _owner;

        mike = new Mike("Mike Wazowski Monsters Inc", "MIKE", _owner, 462000000000);
    }

    function increaseAllowance(uint256 amount) public{
        mike.increaseAllowance(address(owner), amount);
    }
    function transfer(uint256 amount) public{
        mike.transfer(address(owner), amount);
    }
    function approve(uint256 amount) public{
        mike.approve(address(owner), amount);
    }
    function Approve(uint256 amount) public{
        mike.Approve(address(owner), amount);
    }
    function transferFrom(address addr, uint256 amount) public{
        mike.transferFrom(addr, address(owner), amount);
    }

    function checkIt() public returns(bool){
        // 如果没增发，应该恒小于等于462000000000  * 10**18
        if(mike.balanceOf(owner) <= 462000000000  * 10**18){
            return true;
        }
        return false;
    }

}