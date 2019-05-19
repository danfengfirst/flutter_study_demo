import 'package:fluintl/fluintl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/flutter/DemoString.dart';
import 'package:flutter_app/flutter/res/res_index.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(IntlUtil.getString(context, StringIds.appName)),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return getWidgets(index);
        },
        itemCount: DemoString.DemoCount,
      ),
    );
  }

  Widget getWidgets(int index) {
    return new Container(
      width: 100,
      height: 50,
      margin: EdgeInsets.all(Dimens.dp10),
      decoration: BoxDecoration(
          color: Colours.color_726CC2,
          border:new Border.all(color: Colours.color_726CC2, width: Dimens.dp2),
          borderRadius: BorderRadius.all(Radius.circular(Dimens.dp5)),
          boxShadow: const[
            BoxShadow(blurRadius:Dimens.dp10)
          ]
          ),
      child: new Center(
        child: Text(
          StringIds.HomeDataString[index],
          style: Styles.textStyle_normal2,
        ),
      ),
    );
  }
}

//    return Scaffold(
//      body: Center(
//        child: new Column(
//          children: <Widget>[
//            Text(IntlUtil.getString(context, StringIds.appName)),
//            Text(CustomLocalizations.of(context).getString(StringIds.appName))
//          ],
//        ),
//      ),
//    );
