void main() {
  var dog=Dog("小狗",2,"2kg");
  var dog2=Dog.withName("小狗2","3kg");
  var dog3=Dog.withAge(3,"2kg");

  print(dog3.age);
  //常量构造方法
  const cat=const Cat("猫");
}

class Dog {
  String name;
  int age;
  final String weight;
//  Dog(String name,int age,String weight){
//    this.name=name;
//    this.age=age;
//    this.weight=weight;
//  }
  Dog(this.name,this.age,this.weight);//这种方式是在构造方法被调用前对属性赋值
  //命名构造方法
  Dog.withName(String name,this.weight){
    this.name=name;
  }
  Dog.withAge(this.age ,this.weight);
}
//常量构造方法
class Cat{
  final String name;
  const Cat(this.name);
}