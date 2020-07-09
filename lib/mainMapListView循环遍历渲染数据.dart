import 'package:flutter/material.dart';
import 'mock/listData.dart';

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
    var tempList=listData.map((value){
      return ListTile(
        leading: Image.network(value["imageUrl"]),
        title:Text(value["title"])
      );
    });
    return tempList.toList();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children:_getDate(),
    );
  }
}