import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: "text Demo",
      home: MyTextWidget(),
    ));

class MyTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Container(
                width: 100,
                height: 100,
                color: Colors.blue[500],
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                child: new Text(
                  "style1",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.purpleAccent,
                    fontSize: 12,
                    decoration: TextDecoration.none
                  ),
                ),
              ),
              new Expanded(
                  child: new Text(
                "style2 很长很长的文本……………………，style2 很长很长的文本……………………，style2 很长很长的文本……………………",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                    style: TextStyle( decoration: TextDecoration.none,letterSpacing: 10,fontSize: 14),
              ))
            ],
          ),
          new Text.rich(TextSpan(
            text: "text rich",
            style: TextStyle(decoration: TextDecoration.lineThrough),
            children: <TextSpan>[
              TextSpan(text: "文本",style: TextStyle(fontStyle: FontStyle.italic,backgroundColor: Colors.red,decoration: TextDecoration.none)),
              TextSpan(text: "文本",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,decoration: TextDecoration.overline,decorationStyle: TextDecorationStyle.dashed))
            ]
          ))
        ],
      ),
    );
  }
}
