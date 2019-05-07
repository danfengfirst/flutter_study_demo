void main() {
  //1、number
  numberSample();
//2、String
  stringSample();
//4、list
  listSample();
  //5、set
  setSample();
  //6、map
  mapSample();
}





void numberSample() {
  num a = 12.5;
  int b = 12;
  double c = 12.5;
  print(a / 2.3);
  print(c ~/ 2.3);
  print(c.ceil());
  print(b.isEven);
}

void stringSample() {
  String str1 = "hello";
  String str2 = '''Hello  
  Dart  ''';
  String str3 = r'hello \n Dart';
  print(str1);
  print(str2);
  print(str3);
  print("str3=$str3");
  int a = 10;
  int b = 20;
  print("a+b=${a + b}");
}

void listSample() {
  var list = [1, 2, 3, "hello", true];
  print(list);
  print(list[1]);
  for (var element in list) {
    print(element);
  }
  var list2 = new List();
  list2.add("123");
  Map map = list.asMap();
  map.forEach(fun);
}

void fun(dynamic key, dynamic value) {
  print("key+$key+value+$value");
}

void setSample(){
  var sets={"hello","dart",1,2,4};
  sets.add(true);
  sets.add("hello");
  sets.add(null);
  sets.forEach(funSet);
}

void funSet( obj){
print(obj);
}

void mapSample() {
  Map map = {1: true, "hello": "Dart", true: "java"};
  print(map[true]);
  map[1] = false;
  print(map[1]);
  map.forEach(fun);
}