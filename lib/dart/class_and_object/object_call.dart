void main() {
  var person = new Person();
  person
    ..name = "小明"
    ..age = 8;
  //可以被当作方法调用
//  person();
  //可以当作方法，传递参数与返回参数
  print(person("小明", 8));
}

class Person {
  String name;
  int age;

//  void call() {
//    print("name $name, age $age");
//  }

  String call(String name, int age) {
    print("name $name, age $age");
    return name;
  }
}
