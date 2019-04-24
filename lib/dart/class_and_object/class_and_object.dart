//使用import导入一个库
import 'package:flutter_app/dart/class_and_object/fruit.dart';

void main(){
  //两种创建方式
  var person=new Person();
  var person2=Person();
  //默认set|get  ，属性和方法通过.访问
  person.name="小红";
  person.age=10;
  person.say("Hello Flutter");
  //fnal 声明的属性只有getter 方法
//  person.gender="";
  print(person.name);

  var fruit=new Fruit();
  fruit.name="apple";
//  fruit.price=20;
 // 使用_表示库的私有性
//  var fruit2=new _Fruit();
}

class Person {
  String name;
  int age;
  final String gender="female";

  void say(String str){
    print(str);
  }
  //方法不能被重载
//  void say(int data){
//    print(data);
//  }
}

