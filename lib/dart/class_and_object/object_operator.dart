void main() {
  Person person;
  //条件操作符:对象为空的时候不会调用后面的方法（work）
  person?.work();
  //类型转换
  var person2;
  person2 = new Person();
  (person2 as Person).work();
  //是否是指定类型
  var person3;
  if (person3 is! Person) {
    print("person3不是Person类型");
  }
  person3 = new Person();
  if (person3 is Person) {
    print("person3是Person类型");
  }

  //级联操作
  var person4 = new Person();
  person4
    ..name = "小明"
    ..age = 8
    ..work();
}

class Person {
  String name;
  int age;

  void work() {
    print("Work……");
  }
}
