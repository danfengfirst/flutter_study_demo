import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'strings.dart' as StringsUtil;
void main() => runApp(new MaterialApp(home: new MyHttpPage()));

class MyHttpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MyHttpWidget();
  }
}

class MyHttpWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyHttpWidgetState();
  }
}

class MyHttpWidgetState extends State<MyHttpWidget> {
  String showText =StringsUtil.Strings.tipMsg;

  @override
  void initState() {
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Http Demo"),
      ),
      body: new Center(
        child: new Text(showText),
      ),
    );
  }

  loadData() async {
    String dataUrl = "https://jsonplaceholder.typicode.com/posts";
    http.Response response = await http.get(dataUrl);
    setState(() {
      showText = response.body;
    });
  }
}
