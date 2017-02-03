pragma solidity ^0.4.2;

/// @title Records of the students
contract StudentRecord {
    // creating a new complex type to represent a student
    struct Strudent {
        bytes32 first_name;  // stores the first name of the student
        bytes32 last_name;  // stores the last name of the student
        uint age;  // stores the age of the student
        uint phone;  // stores the phone number of the student
        string email;  // stores the email of the student
    }

//    function addStudent(bytes32 first_name, bytes32 last_name, uint age, uint phone, string email) {
//    ;
//    }
}
