import 'package:flutter/material.dart'; //导入flutter推荐的ui组件，material样式

void main() => runApp(new MaterialApp(
  title: "My app",
  home: new MyScaffold(),
));

class MyAppBar extends StatelessWidget {
  final Widget title; //widget 子类中的字段往往会被定义为final
  MyAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      child: new Row(
        //列表项的类型是<widget>
          children: <Widget>[
            new IconButton(icon: new Icon(Icons.menu),
                tooltip: "Navigation menu",
                onPressed: null),
            new Expanded(child: title),
            new IconButton(icon: new Icon(Icons.search),
                tooltip: "search",
                onPressed: null)
          ]

      ),
    );
  }

}

class MyScaffold extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      child: new Column(
        children: <Widget>[
          new MyAppBar(
            title: new Text("Text",
            style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          new Expanded(child: new Center(
            child: new Text("hello world"),
          ))
        ],
      ),
    );
  }
}