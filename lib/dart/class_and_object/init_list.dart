//使用import导入一个库
import 'package:flutter_app/dart/class_and_object/fruit.dart';

void main() {
var person=Person("male");
var person2=Person.withParameters("小明",8,"male");
print(person.gender);
print(person2.age);
}

class Person {
  String name;
  int age;
  final String gender;

  Person(String gender) : gender = gender;

  Person.withParameters(String name, int age, String gender)
      : name = name,
        age = age,
        gender = gender;
}
