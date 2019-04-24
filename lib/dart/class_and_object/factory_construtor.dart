void main() {
  var animal = Animals("cat");
  print(animal);
}

class Animals {
  String type;
  static final Map<String, Animal> _animals = <String, Animal>{};

  factory Animals(String type) {
    if (_animals.containsKey(type)) {
      return _animals[type];
    } else {
      final animal = Animals.getAnimal(type);
      _animals[type] = animal;
      // ignore: return_of_invalid_type_from_closure
      return animal;
    }
  }

  Animals getAnimal(this.type){
    switch (type){
      case "Dog":return new Dog(type);
    }
  } //命名构造方法
}

class Animal{
  String type;
}

class Dog extends Animal{
  String type;
  Dog(this.type);//这种方式是在构造方法被调用前对属性赋值
  void getType(){
    print(this.type);
  }
}