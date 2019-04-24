import "package:flutter/material.dart";
void main()=>runApp(
  new SampleApp()
);

class SampleApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Test",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new SampleAppPage(),
    );
  }
  
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}):super(key:key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new SampleAppPageState();
  }
}
 class SampleAppPageState extends State<SampleAppPage>{
  String textToShow="I like flutter";
  void updateText(){
    setState(() {
      textToShow="Flutter is Awesome!";
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("SampleApp"),
      ),
      body:new Center(child: new Text(textToShow)),
      floatingActionButton:  new FloatingActionButton(onPressed: updateText,
      tooltip: "Update Text",
        child: new Icon(Icons.update),
      ),
    );
  }
  
 }