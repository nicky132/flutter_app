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

class HomePage extends StatefulWidget {//要获取、修改表单里的内容，所以选择有状态组件
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List list=new List();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: this.list.map((value){
            return ListTile(
              title:Text(value),
            );
          }).toList(),
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text("按钮"),
          onPressed: (){
            setState((){//setState动态更新页面
              this.list.add("新增数据1");
              this.list.add("新增数据1");
            });
          },
          )
      ],
    );
  }
}

