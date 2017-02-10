pragma solidity ^0.4.2;

/// @title Records of the students
contract StudentRecord {

    Student[] students;
    // creating a new complex type to represent a student
    struct Student {
        bytes32 first_name;  // stores the first name of the student
        bytes32 last_name;  // stores the last name of the student
        uint age;  // stores the age of the student
        uint phone;  // stores the phone number of the student
        bytes32 email;  // stores the email of the student
    }

    
    function addStudent(bytes32 first_name, bytes32 last_name, uint age, uint phone, bytes32 email) {
    Student memory new_student = Student(first_name=first_name, last_name=first_name, age=age, phone=phone, email=email);
    students.push(new_student);
    }
    
    function getAllStudents() returns (bytes32[], bytes32[], bytes32[]) {
        uint l = students.length;
        bytes32[] memory first_names = new bytes32[](l);
        bytes32[] memory last_names = new bytes32[](l);
        bytes32[] memory emails = new bytes32[](l);
        for(uint i=0; i<l; i++) {
            first_names[i] = students[i].first_name;
            last_names[i] = students[i].last_name;
            emails[i] = students[i].email;
        }
        return (first_names, last_names, emails);
    }
    
    function getStudentDetails(uint index) returns (bytes32, bytes32, uint, uint, bytes32) {
        bytes32 first_name = students[index].first_name;
        bytes32 last_name = students[index].last_name;
        uint age = students[index].age;
        uint phone = students[index].phone;
        bytes32 email = students[index].email;
        return (first_name, last_name, age, phone, email);
    }
}

