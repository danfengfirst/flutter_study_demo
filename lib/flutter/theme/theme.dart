import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final title = "Custom Theme";

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.yellow[800],
        accentColor: Colors.cyan[600],
      ),
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(
        title: title,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Container(
          color: Theme.of(context).accentColor,
          child: Text("Text with a background color",
              style: Theme.of(context).textTheme.title),
        ),
      ),
      floatingActionButton: new Theme(
          data: Theme.of(context).copyWith(accentColor: Colors.yellow),
          child: FloatingActionButton(
            onPressed: null,
            child: new Icon(Icons.add),
          )),
    );
  }
}
