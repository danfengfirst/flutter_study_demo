class Person{
  Person(){
    print("Person constructor");
  }
  Person.withName(this.name);
  String name;
  int age;
  String _gender;
  bool get isAdult =>age>18;
  void run(){
    print("Person can run.");
  }
}