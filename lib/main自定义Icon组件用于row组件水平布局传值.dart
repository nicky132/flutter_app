import 'package:flutter/material.dart';
import 'package:flutter_app/mainGridView.count%E7%BD%91%E6%A0%BC%E5%B8%83%E5%B1%80.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(title:Text('FlutterDemo')),
        body:LayoutDemo(),
      )
      // theme: ThemeData(primarySwatch: Colors.purple,),
      // home: MyHomePage(title: 'NickyAPP'),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IconContainer(Icons.search);
  }
}

class IconContainer extends StatelessWidget{
  double size=32.0;
  Color color=Colors.red;
  IconData icon;
  IconContainer(this.icon,{this.color,this.size});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100.0,
      width: 100.0,
      color: Colors.red,
      child: Center(
        child:Icon(this.icon,size:this.size,color: Colors.white)
      ),
    );
  }

}

