import "dart:async";

void main() {
  print("startTime:"+DateTime.now().toString());
  Future.delayed(Duration(seconds: 2),(){
    return Future.value("success");
  })..timeout(Duration(seconds: 1)).then(print).catchError(print).whenComplete((){
      print("complete");
});
  print("endTime:"+DateTime.now().toString());
}

