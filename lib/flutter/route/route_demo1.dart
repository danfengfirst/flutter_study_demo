import 'package:flutter/material.dart';
import 'package:flutter_app/flutter/home.dart';
import 'package:flutter_app/flutter/widget/sliver_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      initialRoute: "",
      routes: {
        "/home": (context) => Home(),
        "/sliver_demo": (context) => SliverDemo(),
      },
    );
  }
}
