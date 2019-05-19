import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: "Image",
      home: new Column(
        children: <Widget>[
          new AppBar(
            title: new Text("Image"),
          ),
          new Row(
            children: <Widget>[
              new Container(
                child: Image.asset('images/timg.jpg'),
                height: 100,
                width: 100,
              ),
              new Container(
                child: Image.network(
                    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1554051453686&di=49ba8655fcf533e41bde7a00267c80c1&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201810%2F17%2F20181017150055_rvngs.thumb.700_0.jpg"),
                height: 100,
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              new Container(
                child: Image.network(
                  "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1554051453686&di=49ba8655fcf533e41bde7a00267c80c1&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201810%2F17%2F20181017150055_rvngs.thumb.700_0.jpg",
                  scale: 2,
                ),
                height: 200,
                width: 200,
                color: Colors.lightBlue,
              ),
              new Container(
                child: Image.network(
                  "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1554051453686&di=49ba8655fcf533e41bde7a00267c80c1&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201810%2F17%2F20181017150055_rvngs.thumb.700_0.jpg",
                  fit: BoxFit.contain,
                ),
                height: 100,
                width: 100,
                color: Colors.yellow,
              )
            ],
          ),
          new Row(
            children: <Widget>[
              new Container(
                child: Image.network(
                  "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1554051453686&di=49ba8655fcf533e41bde7a00267c80c1&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201810%2F17%2F20181017150055_rvngs.thumb.700_0.jpg",
                  fit: BoxFit.fill,
                ),
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              new Container(
                child: Image.network(
                  "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1554051453686&di=49ba8655fcf533e41bde7a00267c80c1&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201810%2F17%2F20181017150055_rvngs.thumb.700_0.jpg",
                  fit: BoxFit.contain, //1.保持图片的宽高比
                  // 2.将图片放置到ImagetView的中心，然后进行向外按比例放大或者缩小，直到一个方向已经适应，
                  // 3、类似FIT_CENTER
                ),
                height: 100,
                width: 100,
                color: Colors.purple,
                margin: const EdgeInsets.all(10),
              ),
              new Container(
                child: Image.network(
                  "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1554051453686&di=49ba8655fcf533e41bde7a00267c80c1&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201810%2F17%2F20181017150055_rvngs.thumb.700_0.jpg",
                  fit: BoxFit.cover, //保持原比例不被拉伸但是可能会被裁切  类似centercrop
                ),
                height: 100,
                width: 100,
                color: Colors.purple,
                margin: const EdgeInsets.all(10),
              ),
            ],
          ),
          //混合模式
          new Row(
            children: <Widget>[
              new Container(
                child:  Image.asset('images/timg.jpg',
                  color: Colors.purple,
                  colorBlendMode: BlendMode.darken,
                ),
                height: 100,
                width: 100,
              ),
              new Container(
                  child:  Image.asset('images/timg.jpg',
                    color: Colors.purple,
                    colorBlendMode: BlendMode.colorBurn,
                  ),
                  height: 100,
                  width: 100,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                      border: Border.all(color: Colors.yellow, width: 3))),
              new Container(
                  child:  Image.asset('images/timg.jpg',
                    repeat: ImageRepeat.repeat,
                  ),
                  height: 100,
                  width: 100,
              )
            ],

          )
        ],
      ),
    ));
