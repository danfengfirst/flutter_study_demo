import "dart:async";

void main() {
  print("startTime:"+DateTime.now().toString());
  Future.delayed(Duration(milliseconds: 2000),(){
    return Future.value("success");
  }).then(print).catchError(()=>{}).whenComplete((){
      print("complete");
});
  print("endTime:"+DateTime.now().toString());
}

