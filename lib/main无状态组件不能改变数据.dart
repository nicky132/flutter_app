import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(title:Text('FlutterDemo')),
        // body:Text("你好"),
        body:HomePage(),
      )
      // theme: ThemeData(primarySwatch: Colors.purple,),
      // home: MyHomePage(title: 'NickyAPP'),
    );
  }
}

class HomePage extends StatelessWidget {
  // const HomePage({Key key}) : super(key: key);
 int num=1;
  @override
  Widget build(BuildContext context) {
    return Column(
     children: <Widget>[
       SizedBox(height:200),
      //  Text("你好"),
       Text("${this.num}"),
       SizedBox(height:20),
       RaisedButton(
         child: Text("按钮"),
         onPressed: (){
          //  setState();//无状态组件没法改变数据，所以写出来就报错
           this.num++;
          //  print(this.num);//页面数据不会增加，而打印出来会，说明无状态组件没法改变数据
         }
        ),
     ],
    );
  }
}

