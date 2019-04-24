import 'package:flutter/material.dart';

void main()=>runApp(
  new FadeAppTest()
);

class FadeAppTest extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "FadeAnimateTest",
      theme: new ThemeData(
        primarySwatch: Colors.yellow
      ),
      home: new FadeTest(title: "Fade Animate",),
    );
  }

}

class FadeTest extends StatefulWidget{
  FadeTest({Key key,this.title}) :super(key:key);
  final String title;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new FadeTestState();
  }
}

class FadeTestState extends State<FadeTest> with TickerProviderStateMixin{
  AnimationController controller;
  CurvedAnimation curve;
  @override
  void initState() {
    controller=new AnimationController(duration:  const Duration(milliseconds: 2000),vsync: this);
    curve=CurvedAnimation(parent: controller, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Container(
          child: new FadeTransition(opacity: curve,
          child: new FlutterLogo(
            size: 100,
          ),
          ),
        ),),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
        controller.forward();
      },
        tooltip: "Fade",
        child: Icon(Icons.brush),
      ),
    );
  }


}

