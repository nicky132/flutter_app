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
    return Container(
      height: 180,
      child: ListView(
      // padding: EdgeInsets.all(10),
      scrollDirection: Axis.horizontal,
      children: <Widget>[//children里面可以放任意组件
        Container(
          width: 180,
          color: Colors.yellow,
        ),
         Container(
          width: 180,
          color: Colors.blue,
          child: ListView(
            children:<Widget>[
              Image.network("http://image2.sina.com.cn/ent/d/2005-06-21/U105P28T3D758537F326DT20050621155831.jpg"),
              Text("我是一个文本")
            ]
          ),
        ),
         Container(
          width: 180,
          color: Colors.orange,
        ),
         Container(
          width: 180,
          color: Colors.brown,
        ),
         Container(
          width: 180,
          color: Colors.green,
        ),
        Container(
          width: 180,
          color: Colors.red,
        ),
      ],
    )
    );
  }
}