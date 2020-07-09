import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(title:Text('FlutterDemo')),
        body:LayOutDemo(),
      )
      // theme: ThemeData(primarySwatch: Colors.purple,),
      // home: MyHomePage(title: 'NickyAPP'),
    );
  }
}

class LayOutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
       children: <Widget>[
         Row(
           children: <Widget>[
             Expanded(
               child: Container(
                height:200,
                color:Colors.black,
                child:Text("你好Flutter"),
              )
             )
           ],
         ),
         SizedBox(height:10),
         Row(
           children: <Widget>[
             Expanded(
              flex: 2,
              child:Container(
                height:180,
                child: Image.network("https://www.itying.com/images/flutter/1.png",fit: BoxFit.cover)
              )
             ),
             SizedBox(width:10),
             Expanded(
              flex: 1,
              child:Container(
                height:180,
                child: ListView(
                  children: <Widget>[
                    Container(
                      height: 85,
                      child: Image.network("https://www.itying.com/images/flutter/3.png",fit:BoxFit.cover),
                    ),
                    SizedBox(height:10),
                    Container(
                      height: 85,
                      child: Image.network("https://www.itying.com/images/flutter/4.png",fit:BoxFit.cover),
                    ),
                  ],
                )
              )
             ),
           ],
         )
       ],
     );
  }
}