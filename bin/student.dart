////////////////////////
/// define class called Employee which has this attributes
/// name, certification, salary in dollar, department, function called dollar to sheikel
/// define the class constructor to recive named parameters
/// make a new instanse for this class
/// it,security, managment
/// define named constructor that recive only one parameter and assign it to name
/// change employee to abstract class
/// define abstract method to emplyee class called getSalary
/// define subclasses from employee called Manger, services, ItMan
enum Certification { diploma, bachelor, master, phd }
enum Department { IT, security, managment }
enum Gender { male, female }

class Employee {
  String name;
  Certification certification;
  double salary;
  Department deparment;
  double convertSalaryToSheikel() {
    return salary * 3.5;
  }

  // Employee({this.name, this.certification, this.deparment, this.salary});
  //named constructor

}

class Manager with Employee, Human {
  @override
  getWork() {
    // TODO: implement getWork
    throw UnimplementedError();
  }
}

class Stundent extends Human {
  String name;
  String address;
  String specialist;
  int age;
  double money;
  double arabic;
  double english;
  double computer;
  double scince;
  double calculateGpa() {
    return (arabic + english + scince + computer) / 4;
  }

  Stundent(
      {this.name,
      this.address,
      this.specialist,
      this.age,
      this.arabic,
      this.computer,
      this.english,
      this.scince});
  //named constructor
  Stundent.secondConstructor(this.name);

  @override
  getWork() {
    // TODO: implement getWork
    return ' still study';
  }
}

abstract class Human {
  Gender gender;
  getWork();
}
