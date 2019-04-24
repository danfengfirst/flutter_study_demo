import 'package:flutter_app/dart/class_and_object/Person.dart';

//(1)使用关键字extends 继承一个类
//(2) 子类会继承父类可见的属性和方法，不会继承父类的命名构造函数
//(3)子类能够复写父类的方法，getter 和setter
//(4) 单继承，多态性

void main() {
  var student = new Student();
  student.study();
  //2、可以访问Person中可见的属性、计算属性与方法
  student.name = "学生1";
  student.age = 16;
  student.isAdult;
  student.run();
  print("student  age is ${student.age}");
  print("student is Adult ${student.isAdult}");
  //不能访问不可见属性
//  student._gender="";
}

//1、使用关键字extends 继承一个类
class Student extends Person {
  Student() {
    print("Student constructor");
  }

  void study() {
    print("Student study");
  }

  //3、子类能够复写父类的方法，getter 和setter
//  @override
//  int get age => super.age+1;
//
//  @override
//  void set age(int _age) {
//    super.age = _age + 1;
//  }

  @override
  bool get isAdult => age > 16;

  @override
  void run() {
    print("Studdent can run.");
  }
}
