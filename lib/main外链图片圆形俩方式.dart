import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(title:Text('NickyAPP')),
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
      // child:Text('你好Flutter')
      child:Container(
        // Image.network外链图片，以及图片居中两种方式
        // child:Image.network(
        //   "https://dss1.bdstatic.com/5aAHeD3nKgcUp2HgoI7O1ygwehsv/media/ch1/jpg/%E5%BB%BA%E8%AE%BE%E8%80%85%E9%80%9A%E6%A0%8F%E5%8D%A1%E7%AA%84%E5%B1%8F.jpg",
        //   // alignment: Alignment.bottomCenter,
        //   // color:Colors.blue,
        //   // fit: BoxFit.cover,
        //   // repeat: ImageRepeat.repeat
        // ),
        width:300,
        height:300,
        decoration:BoxDecoration(
          color:Colors.yellow,
          borderRadius: BorderRadius.circular(150),
          image: DecorationImage(
            image:NetworkImage("https://dss1.bdstatic.com/5aAHeD3nKgcUp2HgoI7O1ygwehsv/media/ch1/jpg/%E5%BB%BA%E8%AE%BE%E8%80%85%E9%80%9A%E6%A0%8F%E5%8D%A1%E7%AA%84%E5%B1%8F.jpg")
            ,fit: BoxFit.cover
          )
        ),
      )
    );
  }
}

