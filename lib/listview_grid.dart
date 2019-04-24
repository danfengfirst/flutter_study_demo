import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GridView",
      home: new Scaffold(
        appBar: AppBar(),
        body: GridView.count(
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 10,
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          childAspectRatio: 0.7,
          children: <Widget>[
            new Container(
              height: 100,
              color: Colors.red,
            ),
            new Container(
              height: 150,
              color: Colors.yellow,
            ),
            new Container(
              color: Colors.blue,
            ),
            new Container(
              color: Colors.red,
            ),
            new Container(
              color: Colors.yellow,
            ),
            new Container(
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
