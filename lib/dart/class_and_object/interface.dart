import 'package:flutter_app/dart/class_and_object/Person.dart';
//(1)Dart中类与接口是统一的，类就是接口
//(2)每个类都隐式的定义了一个包含所有实例成员的接口
//类与接口的使用区别：
//如果是复用用已有类的实现，使用继承
//如果是使用已有类的行为，使用接口
void main(){
    Student student =new Student();
}

class Student implements Person{
  @override
  int age;

  @override
  String name;

  @override
  // TODO: implement isAdult
  bool get isAdult => null;

  @override
  void run() {
    // TODO: implement run
  }

}