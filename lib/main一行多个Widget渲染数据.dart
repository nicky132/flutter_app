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
    return GridView.count(
      crossAxisCount: 3,
      children: <Widget>[
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
      ],
    );
  }
}

