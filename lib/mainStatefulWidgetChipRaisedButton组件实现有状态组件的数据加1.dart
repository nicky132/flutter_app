import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(title:Text('FlutterDemo')),
        body:HomePage(),
      )
      // theme: ThemeData(primarySwatch: Colors.purple,),
      // home: MyHomePage(title: 'NickyAPP'),
    );
  }
}

//有状态组件
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height:200),
        Chip(
          label:Text("${this.num}"),
        ),
        SizedBox(height: 20),
        RaisedButton(
          child: Text("按钮"),
          onPressed: (){
            setState((){//setState动态更新页面
              this.num++;
            });
          },
        )
      ],
    );
  }
}
