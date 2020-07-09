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
      child:Container(
        height:400,
        width:300,
        color:Colors.red,
        child:Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child:Icon(Icons.home,size:40,color:Colors.white),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child:Icon(Icons.home,size:40,color:Colors.white),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child:Icon(Icons.home,size:40,color:Colors.white),
            ),
          ],
        )
      )
    );
  }
}

