import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(title:Text('FlutterDemo')),
        body:HomeContent(),
      )
      // theme: ThemeData(primarySwatch: Colors.purple,),
      // home: MyHomePage(title: 'NickyAPP'),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      // padding: EdgeInsets.all(10),
      children: <Widget>[//children里面可以放任意组件
        Image.network("http://image2.sina.com.cn/ent/d/2005-06-21/U105P28T3D758537F326DT20050621155831.jpg"),
        Container(
          child:Text(
            '第一个标题',
            textAlign: TextAlign.center,
            style:TextStyle(
              fontSize: 18,
            )
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0,20, 0,20),
        ),
        Image.network("http://image2.sina.com.cn/ent/d/2005-06-21/U105P28T3D758537F326DT20050621155831.jpg"),
         Container(
          child:Text(
            '第一个标题',
            textAlign: TextAlign.center,
            style:TextStyle(
              fontSize: 18,
            )
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0,20, 0,20),
        ),
        Image.network("http://image2.sina.com.cn/ent/d/2005-06-21/U105P28T3D758537F326DT20050621155831.jpg"),
         Container(
          child:Text(
            '第一个标题',
            textAlign: TextAlign.center,
            style:TextStyle(
              fontSize: 18,
            )
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0,20, 0,20),
        ),
        Image.network("http://image2.sina.com.cn/ent/d/2005-06-21/U105P28T3D758537F326DT20050621155831.jpg"),
         Container(
          child:Text(
            '第一个标题',
            textAlign: TextAlign.center,
            style:TextStyle(
              fontSize: 18,
            )
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0,20, 0,20),
        ),
        Image.network("http://image2.sina.com.cn/ent/d/2005-06-21/U105P28T3D758537F326DT20050621155831.jpg"),
         Container(
          child:Text(
            '第一个标题',
            textAlign: TextAlign.center,
            style:TextStyle(
              fontSize: 18,
            )
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0,20, 0,20),
        ),
        Image.network("http://image2.sina.com.cn/ent/d/2005-06-21/U105P28T3D758537F326DT20050621155831.jpg"),
        Container(
          child:Text(
            '第一个标题',
            textAlign: TextAlign.center,
            style:TextStyle(
              fontSize: 18,
            )
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0,20, 0,20),
        ),
      ],
    );
  }
}

