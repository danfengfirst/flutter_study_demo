import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
    title: "Hello Container",
    color:Colors.white,
    home: new Container(
      child: new Text("Hello Container",style: TextStyle(
        fontSize: 12,
        decoration: TextDecoration.none
      ),),
      alignment: Alignment.bottomRight,
      height: 500,
      width: 500,
      padding: const EdgeInsets.fromLTRB(0, 0, 10, 50),
      margin: const EdgeInsets.fromLTRB(50, 50, 50, 50),
      decoration: new BoxDecoration(
        color: Colors.purple,
        gradient: new SweepGradient(
            colors: [Colors.purple, Colors.blue, Colors.yellow]),
      ),
    )));
