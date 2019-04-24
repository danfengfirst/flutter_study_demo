void main() {
  var person1 = new Person(10);
  var person2 = new Person(20);

  print(person1 > person2);
  print( person1["35"]);
}

class Person {
  int age;

  Person(this.age);

  bool operator >(Person person) {
    return this.age > person.age;
  }

  int operator [](String age){
    this.age=int.parse(age);
    return this.age;
  }

//  @override
//  bool operator ==(Object other) =>
//      identical(this, other) ||
//          other is Person &&
//              runtimeType == other.runtimeType &&
//              age == other.age;
//
//  @override
//  int get hashCode => age.hashCode;


}
