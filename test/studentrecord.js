/**
 * Created by animesh on 10/2/17.
 */
// Specifically request an abstraction for StudentRecord.sol
var StudentRecord = artifacts.require("./StudentRecord.sol");

contract('StudentRecord', function (accounts) {
    it("should add student to the record", function () {
         return StudentRecord.deployed().then(function (instance) {
             return instance.addStudent.call("Animesh", "Kumar", 23, 9717537721, "animesh0721@gmail.com");
         });
    });

    it("should display records correctly", function () {
        return StudentRecord.deployed().then(function (instance) {
            return instance.getAllStudents.call();
        });
    });

    it("should get details of particular index", function () {
        return StudentRecord.deployed().then(function (instance) {
            return instance.getStudentDetails.call();
        });
    });
});