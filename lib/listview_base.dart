import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListView",
      home: Scaffold(
          appBar: AppBar(
            title: new Text("ListViewDemo"),
          ),
          body: MyListViewHorizontal()),
    );
  }
}

class MyListViewVertical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: getWidgets(),
//          <Widget>[
//        new ListTile(
//          leading: new Icon(Icons.access_alarm),
//          title: new Text("access_alarm"),
//        ),
//        new ListTile(
//          leading: new Icon(Icons.access_time),
//          title: new Text("access_time"),
//        ),
//        new ListTile(
//          leading: new Icon(Icons.accessibility_new),
//          title: new Text("accessibility_new"),
//        ),
//      ],
    );
  }

  List<Widget> getWidgets() {
    List<Widget> widgets = new List();
    for (int i = 0; i < 10; i++) {
      widgets.add(new ListTile(
        leading: new Icon(Icons.access_alarm),
        title: new Text("access_alarm"),
      ));
      widgets.add(new ListTile(
        leading: new Icon(Icons.access_time),
        title: new Text("access_time"),
      ));
      widgets.add(new ListTile(
        leading: new Icon(Icons.accessibility_new),
        title: new Text("accessibility_new"),
      ));
    }
    return widgets;
  }
}

class MyListViewHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
        child: new Container(
      height: 200,
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: getWidgets(),
      ),
    ));
  }

  List<Widget> getWidgets() {
    List<Widget> widgets = new List();
    for (int i = 0; i < 10; i++) {
      widgets.add(new Container(
        color: Colors.blue,
        width: 200,
      ));
      widgets.add(new Container(
        color: Colors.yellow,
        width: 200,
      ));
      widgets.add(new Container(
        color: Colors.red,
        width: 200,
      ));
    }
    return widgets;
  }
}
