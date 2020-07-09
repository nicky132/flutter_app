import 'package:flutter/material.dart';

import 'res/listData.dart';

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
   Widget _getListData(context,index){
      return Container(
          child: Column(
            children:<Widget>[
              Image.network(listData[index]['imageUrl']),
              SizedBox(height:12),
              Text(
                listData[index]['title'],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize:20
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            border:Border.all(
              color:Color.fromRGBO(233,233,233,0.9),
              width:1
            )
          ),
        );
   }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,//一行widget数量
        mainAxisSpacing: 10.0,//垂直子widget之间间距
        crossAxisSpacing: 10.0,//水平子widget之间间距
        ),
      itemCount: listData.length,
      itemBuilder: this._getListData,
    );
  }
}

