// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyMapping{
    mapping(uint => address) public id2Adress;
    mapping(address => address) public swapAddr;

    mapping(uint => bytes1) public id2Bytes1;
    mapping(uint => string) public id2Str;

    function writeMap(uint _key,address _value) public {
        id2Adress[_key] = _value;
    }
    function writeBytes(uint _key,bytes1 _bs) public {
        id2Bytes1[_key] = _bs;
    }
    function writeWords(uint _key,string calldata _words) public {
        id2Str[_key] = _words;
    }
}