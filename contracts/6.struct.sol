// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyDraft {
    struct Student{
        uint256 id;
        uint256 score; 
    }

    Student student;

    //  给结构体赋值
    // 方法1:在函数中创建一个storage的struct引用
    function initStudent1() external view returns (Student memory _student) {
        _student = student; // assign a copy of student
        _student.id = 11;
        _student.score = 100;
    }

    // 方法2:直接引用状态变量的struct
    function initStudent2() external{
        student.id = 1;
        student.score = 80;
    }

    // 方法3:构造函数式
    function initStudent3() external {
        student = Student(3, 90);
    }

    // 方法4:key value
    function initStudent4() external {
        student = Student({id: 4, score: 60});
    }
}