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
      child:Container(
        child:ClipOval(
          child:Image.network(
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581688888269&di=6afee52866edaff461bc03f33252a5e4&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20181231%2Ffc80e81acb5e42adae7bf547fe5e0094.jpeg",
            height: 100,
            width:100,
            fit:BoxFit.cover
            ),
        )
      )
    );
  }
}

