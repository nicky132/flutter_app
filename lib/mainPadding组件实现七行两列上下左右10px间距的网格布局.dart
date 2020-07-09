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
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 1.7,
      children: <Widget>[
        Padding(
           padding:EdgeInsets.fromLTRB(10,10,10,10),
           child:Image.network("https://www.itying.com/images/flutter/1.png",fit: BoxFit.cover),
        ),
        Padding(
           padding:EdgeInsets.fromLTRB(10,10,10,10),
           child:Image.network("https://www.itying.com/images/flutter/1.png",fit: BoxFit.cover),
        ),
        Padding(
           padding:EdgeInsets.fromLTRB(10,10,10,10),
           child:Image.network("https://www.itying.com/images/flutter/1.png",fit: BoxFit.cover),
        ),
        Padding(
           padding:EdgeInsets.fromLTRB(10,10,10,10),
           child:Image.network("https://www.itying.com/images/flutter/1.png",fit: BoxFit.cover),
        ),
        Padding(
           padding:EdgeInsets.fromLTRB(10,10,10,10),
           child:Image.network("https://www.itying.com/images/flutter/1.png",fit: BoxFit.cover),
        ),
        Padding(
           padding:EdgeInsets.fromLTRB(10,10,10,10),
           child:Image.network("https://www.itying.com/images/flutter/1.png",fit: BoxFit.cover),
        ),
        Padding(
           padding:EdgeInsets.fromLTRB(10,10,10,10),
           child:Image.network("https://www.itying.com/images/flutter/1.png",fit: BoxFit.cover),
        ),Padding(
           padding:EdgeInsets.fromLTRB(10,10,10,10),
           child:Image.network("https://www.itying.com/images/flutter/1.png",fit: BoxFit.cover),
        ),Padding(
           padding:EdgeInsets.fromLTRB(10,10,10,10),
           child:Image.network("https://www.itying.com/images/flutter/1.png",fit: BoxFit.cover),
        ),Padding(
           padding:EdgeInsets.fromLTRB(10,10,10,10),
           child:Image.network("https://www.itying.com/images/flutter/1.png",fit: BoxFit.cover),
        ),Padding(
           padding:EdgeInsets.fromLTRB(10,10,10,10),
           child:Image.network("https://www.itying.com/images/flutter/1.png",fit: BoxFit.cover),
        ),Padding(
           padding:EdgeInsets.fromLTRB(10,10,10,10),
           child:Image.network("https://www.itying.com/images/flutter/1.png",fit: BoxFit.cover),
        ),
      ],
    );
  }
}

