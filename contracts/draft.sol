// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "hardhat/console.sol";

contract MyDraft {
    // 整型
    int public _int = -1; // 整数，包括负数
    uint public _uint = 1; // 无符号整数
    uint256 public _number = 20220330; // 256位无符号整数

    uint256 public _number1 = _number + 1; // +，-，*，/
    uint256 public _number2 = 2**2; // 指数
    uint256 public _number3 = 7 % 2; // 取余数
    bool public _numberbool = _number2 > _number3; // 比大小

    // 用enum将uint 0， 1， 2表示为Buy, Hold, Sell
    enum ActionSet { Buy, Hold, Sell }
    // 创建enum变量 action
    ActionSet action = ActionSet.Sell;

    // enum可以和uint显式的转换
    function enumToUint() external view returns(uint){
        return uint(action);
    }
}