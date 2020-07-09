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
    return Center(
      child:Stack(
        alignment: Alignment(0,-1),
        children: <Widget>[
          Container(
            height:400,
            width:300,
            color:Colors.red,
          ),
          Text(
            "我是一个文本",
            style: TextStyle(
              fontSize:40,
              color:Colors.white
            ),
          ),
        ],
      ),
    );
  }
}

