import 'package:flutter/material.dart';
import 'package:flutter_app/flutter/DemoString.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index){
        return Text("");
      },
      itemCount:DemoString[index] ,
    );
  }
}
