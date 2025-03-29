// SPDX-License-Identifier: MIT
pragma solidity 0.8;

contract Calculator{
    uint256 x;uint256 y;
    uint256 result;
    function add(uint256 _x,uint256 _y)public {
        result=_x+_y;
    }

    function sub(uint256 _x,uint256 _y)public {
        result=_x-_y;
    }

    function multiply(uint256 _x,uint256 _y)public {
        result=_x*_y;
    }

    function divide(uint256 _x,uint256 _y)public {
        result=_x/_y;
    }

    function answer()public view returns(uint256){
        return result;
    }
}