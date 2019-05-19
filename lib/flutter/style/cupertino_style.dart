import 'package:flutter/cupertino.dart';

void main() => runApp(new CupertinoApp(
  home: HomeScreen(),
  debugShowCheckedModeBanner: false,
  theme: CupertinoThemeData(
    primaryColor: CupertinoColors.activeGreen,
    scaffoldBackgroundColor: CupertinoColors.activeOrange,
  ),
));

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: [
        BottomNavigationBarItem(
            title: Text("首页"), icon: Icon(CupertinoIcons.home)),
        BottomNavigationBarItem(
            title: Text("观看"), icon: Icon(CupertinoIcons.eye_solid)),
        BottomNavigationBarItem(
            title: Text("购物"), icon: Icon(CupertinoIcons.shopping_cart)),
        BottomNavigationBarItem(
            title: Text("个人中心"), icon: Icon(CupertinoIcons.person)),
      ]),
      tabBuilder: (context, index) {
        return new CupertinoTabView(builder: (context) {
          return CupertinoPageScaffold(
              child: new Center(
                  child: CupertinoButton(
                      child: Text(
                        "this is tab :$index",
                      ),
                      onPressed: null)));
        });
      },
    );
  }
}
