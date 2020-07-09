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
      children: <Widget>[
        Card(
          margin:EdgeInsets.all(10),
          child:Column(
            children: <Widget>[
              ListTile( //列表用ListTile实现
                title:Text(
                  "张三",
                  style:TextStyle(
                    fontSize: 28
                  )
                ),
                subtitle: Text("高级工程师"),
              ),
              ListTile( //列表用ListTile实现
                title:Text(
                  "电话：ssss",
                  style:TextStyle(
                    fontSize: 28
                  )
                ),
                subtitle: Text("工程师"),
              ),
               ListTile( //列表用ListTile实现
                title:Text(
                  "王五电话：ssss",
                  style:TextStyle(
                    fontSize: 28
                  )
                ),
                subtitle: Text("工程"),
              ),
            ],
          )
        ),
        Card(
          margin:EdgeInsets.all(10),
          child:Column(
            children: <Widget>[
              ListTile( //列表用ListTile实现
                title:Text(
                  "张三",
                  style:TextStyle(
                    fontSize: 28
                  )
                ),
                subtitle: Text("高级工程师"),
              ),
              ListTile( //列表用ListTile实现
                title:Text(
                  "电话：ssss",
                  style:TextStyle(
                    fontSize: 28
                  )
                ),
                subtitle: Text("工程师"),
              ),
               ListTile( //列表用ListTile实现
                title:Text(
                  "王五电话：ssss",
                  style:TextStyle(
                    fontSize: 28
                  )
                ),
                subtitle: Text("工程"),
              ),
            ],
          )
        ),
        Card(
          margin:EdgeInsets.all(10),
          child:Column(
            children: <Widget>[
              ListTile( //列表用ListTile实现
                title:Text(
                  "张三",
                  style:TextStyle(
                    fontSize: 28
                  )
                ),
                subtitle: Text("高级工程师"),
              ),
              ListTile( //列表用ListTile实现
                title:Text(
                  "电话：ssss",
                  style:TextStyle(
                    fontSize: 28
                  )
                ),
                subtitle: Text("工程师"),
              ),
               ListTile( //列表用ListTile实现
                title:Text(
                  "王五电话：ssss",
                  style:TextStyle(
                    fontSize: 28
                  )
                ),
                subtitle: Text("工程"),
              ),
            ],
          )
        ),
      ],
    );
  }
}
