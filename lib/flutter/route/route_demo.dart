import 'package:flutter/material.dart';
import 'package:flutter_app/flutter/home.dart';
import 'package:flutter_app/flutter/res/res_index.dart';
import 'package:flutter_app/flutter/widget/sliver_demo.dart';
import 'package:flutter_app/listview_base.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fluintl/fluintl.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}


class AppState extends State<App> {
  @override
  void initState() {
    _init();
    super.initState();
  }
  void _init() {
    //初始化操作
    setLocalizedSimpleValues(localizedSampleValues);
//    setLocalizedValues(localizedValues);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      initialRoute: "/home",
      routes: {
        "/home": (context) => HomeScreen(),
        "/listview_vertical": (context) => MyListViewVertical(),
        "/sliver_demo": (context) => SliverDemo(),
      },
      locale: Locale('zh', 'cn'),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        CustomLocalizations.delegate
      ],
      supportedLocales: [Locale('en', 'US'), Locale('zh', 'CN')],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colours.color_726CC2
      ),
    );
  }



}
