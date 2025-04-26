// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyDraft {

    bytes _array3  = new bytes(3); // storage 中的字节数组
    bytes _array4 = hex"010203";   // 使用字节数组初始化

    function run() public view returns (bytes1[3] memory array1, bytes memory array3, bytes memory array4) {
        // 将本地变量声明为 memory 类型
        array1[0] = bytes1(0x01); // 创建一个新的字节数组
        array1[1] = bytes1(0x02); // 创建一个新的字节数组
        array1[2] = bytes1(0x03); // 创建一个新的字节数组

        array3 = _array3; // 将 storage 中的 _array3 复制到 memory 中
        array4 = _array4; // 将 storage 中的 _array4 复制到 memory 中
    }

    uint[] public storageArray;  // 在 storage 中定义一个动态数组

    // 在 storage 中使用 push 添加元素
    function pushToStorage() public {
        storageArray.push(); // 将 0 添加到 storageArray 数组
    }

    // 返回 storage 中的数组
    function getStorageArray() public view returns (uint[] memory) {
        return storageArray;
    }
    function getStorageArrayLength() public view returns (uint) {
        return storageArray.length;
    }

    // 在 memory 中创建一个固定长度的数组，并返回
    // function createMemoryArray() public pure returns (uint[] memory) {
    //     uint[] memory arr;
    //     arr.push(1);  // 设置数组元素
    //     arr.push(2);  // 设置数组元素
    //     arr.push(3);  // 设置数组元素
    //     return arr;  // 返回 memory 中的数组
    // }
}