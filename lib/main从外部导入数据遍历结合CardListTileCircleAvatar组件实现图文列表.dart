import 'package:flutter/material.dart';
import 'res/listData.dart';
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
      children:listData.map((value){
        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(//用来实现子元素宽高比
                aspectRatio: 16/9,//图片的比率就是16/9
                child:Image.network(value["imageUrl"],fit:BoxFit.cover),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(value["imageUrl"]),
                ),
                title:Text(value["title"]),
                subtitle:Text(value["author"])
              )
            ],
          ),
        );
      }
      ).toList(),
    )
    ;
  }
}
