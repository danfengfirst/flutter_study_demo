import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SliverDemo(),
      theme: ThemeData(),
    );
  }
}

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text("SliverListDemo")
                  ,floating: true,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                title:Text( "FlexibleSparBarTitle"),
                background: Image.network("http://pic35.nipic.com/20131115/13972544_160943053001_2.jpg",
                fit: BoxFit.cover,
                ),
              ),
            ),
            SliverSafeArea(
              sliver: SliverPadding(
                  padding: EdgeInsets.all(8), sliver: SliverListDemo()),
            )
          ],
        ));
  }
}

class SliverGridDemo extends StatelessWidget {
  List<String> datas = new List();

  SliverGridDemo() {
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
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          child: CachedNetworkImage(
            errorWidget: (BuildContext context, String url, Object error) =>
                Icon(Icons.error),
            placeholder: (BuildContext context, String url) => new Container(
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
            imageUrl: datas[index % 6],
            fit: BoxFit.cover,
          ),
        );
      }),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  List<String> datas = new List();

  SliverListDemo() {
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
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Material(
              borderRadius: BorderRadius.circular(10.0),
              elevation: 10,
              shadowColor: Colors.red,
              child: Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: CachedNetworkImage(
                      errorWidget:
                          (BuildContext context, String url, Object error) =>
                              Icon(Icons.error),
                      placeholder: (BuildContext context, String url) =>
                          new Container(
                            child: new Center(
                              child: SizedBox(
                                child: CircularProgressIndicator(
                                  backgroundColor: Colors.purple,
                                  strokeWidth: 2,
                                  valueColor:
                                      AlwaysStoppedAnimation(Colors.cyanAccent),
                                ),
                                height: 10.0,
                                width: 10.0,
                              ),
                            ),
                          ),
                      imageUrl: datas[index % 6],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 30,
                    child: Column(
                      children: <Widget>[Text("$index")],
                    ),
                  )
                ],
              ),
            ));
      }),
    );
  }
}
