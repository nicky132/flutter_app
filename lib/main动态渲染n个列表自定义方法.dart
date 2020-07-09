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
  // 自定义方法
  List<Widget> _getDate(){
    List<Widget> list=new List();
    for(var i=0;i<20;i++){
      list.add(ListTile(
        title:Text("我是第$i个列表")
      ));
    }
     return list;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children:_getDate(),
    );
  }
}