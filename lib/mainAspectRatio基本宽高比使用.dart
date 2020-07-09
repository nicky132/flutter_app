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
      width:200,
      child: AspectRatio(
        aspectRatio: 2.0/1.0,//child元素按照父元素尺寸的2:1展示
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}
