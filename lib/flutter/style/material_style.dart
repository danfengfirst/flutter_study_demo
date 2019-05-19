import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
        scaffoldBackgroundColor: Colors.orange,
        backgroundColor: Colors.purple,
      ),
    ));

class HomeState extends State<HomeScreen> {
  int _tabIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getPage(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(title: Text("首页"), icon: Icon(Icons.home)),
          BottomNavigationBarItem(title: Text("观看"), icon: Icon(Icons.looks)),
          BottomNavigationBarItem(
              title: Text("购物"), icon: Icon(Icons.shopping_cart)),
          BottomNavigationBarItem(
              title: Text("个人中心"), icon: Icon(Icons.person)),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _tabIndex,
        iconSize: 30,
        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
        },
      ),
    );
  }

  Widget getPage() {
    return new Container(
        child: new Center(
      child: RaisedButton(
        color: Colors.red,
        child: Text(
          "this is tab :$_tabIndex",
        ),
        onPressed: null,
      ),
    ));
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}
