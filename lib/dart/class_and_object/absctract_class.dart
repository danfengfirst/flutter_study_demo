void main(){
 // 抽象类使用abstract表示，不能直接被实例化
//  var person=new Person();
    var student=new Student();
//    student.work();
}
//抽象类使用abstract表示，不能直接被实例化
abstract class Person {
 // 抽象类可以没有抽象方法
  //抽象方法不用abstract 修饰，无实现
//  void work();
}

class Student extends Person{
//  @override
//  void work() {
//    print("Study");
//  }
}