import "dart:async";

test() async {
  String result=await Future.delayed(Duration(milliseconds: 2000),(){
  return Future.value("success");
  });
  print("asyncTime:"+DateTime.now().toString());
  print(result);
}
void main() {
  print("startTime:"+DateTime.now().toString());
  test();
  print("endTime:"+DateTime.now().toString());
}

