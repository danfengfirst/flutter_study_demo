void main() {
  SomeAnimal someAnimal = new SomeAnimal();
  someAnimal.eat();
  //使用Mixins时当2个类中有相同的方法，具体方法的调用跟2个类的先后顺序相关
  someAnimal.bark();
}

class Animal {
  void eat() {
    print("eat someThings");
  }
}

class Dog {
  void bark() {
    print("wang wang wang");
  }
}

class Cat {
//  Cat() {} //(3)作为MixIn的类不能有显示声明的构造方法

  void feature() {
    print("very cute");
  }

  void bark() {
    print("miao miao miao ");
  }
}

class SomeAnimal extends Animal with Cat, Dog {}
