import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<String> datas = new List();

  MyApp({Key key}) {
    datas.add(
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1554742667379&di=fc1673a26d17bd25679ce61242a56534&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F20182%2F21%2F2018221142159_MZ33z.jpeg");
    datas.add("http://n.sinaimg.cn/translate/20160923/WdMw-fxwevmh8824713.jpg");
    datas.add(
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1554742667373&di=04435ea8d942a07d0fc5b1033d628dc2&imgtype=0&src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fupload%2Fupc%2Ftx%2Fhousephotolib%2F1505%2F22%2Fc4%2F7191028_1432305825541_690x460.jpg");
    datas.add("http://pic28.nipic.com/20130418/2786001_095207119000_2.jpg");
    datas.add(
        "http://pic144.nipic.com/file/20171025/20614752_181558394000_2.jpg");
    datas.add("http://pic28.nipic.com/20130418/2786001_095207119000_2.jpg");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "GridView",
      home: new Scaffold(
          appBar: AppBar(),
          body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return buildItem(datas[index], index);
            },
            itemCount: datas.length,
          )),
    );
  }

  Widget buildItem(String data, int index) {
    return new GestureDetector(
        onTap: () => {
              Fluttertoast.showToast(
                  msg: "点击了$index",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIos: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0)
            },
        child: new Container(
          child: new CachedNetworkImage(
            errorWidget: (context, url, error) => new Icon(Icons.error),
            placeholder: (context, url) => new Container(
                  child: new Center(
                    child: SizedBox(
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.purple,
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation(Colors.cyanAccent),
                      ),
                      height: 10.0,
                      width: 10.0,
                    ),
                  ),
                ),
            imageUrl: data,
            fadeInDuration: new Duration(seconds: 3),
            fadeOutDuration: new Duration(seconds: 1),
          ),
        ));
  }
}
