import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart' as mainPage;
 void main()=>runApp(
   new MaterialApp(
    home: new MyAppHome (),
    routes: <String,WidgetBuilder>{
//     '/main':{BuildContext context} => new mainPage(),
    },
   )
 );

class MyAppHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}