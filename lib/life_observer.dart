import 'package:flutter/material.dart';

class LifecycleWatcher extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _LifecyclerWatcherState();
  }
}

class _LifecyclerWatcherState extends State<LifecycleWatcher>
    with WidgetsBindingObserver {
  AppLifecycleState _appLifecycleState;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      _appLifecycleState = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_appLifecycleState == null)
      return new Text("This Widget has not Observered any lifecycle changes",
          textDirection: TextDirection.ltr
      );
    return new Text(
        "The most recent lifecycle state this widget observered was $_appLifecycleState",
        textDirection: TextDirection.ltr);
  }
}

void main() {
  runApp(new Center(child: new LifecycleWatcher()));
}