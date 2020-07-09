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
   List<Widget> _getListData(){
     var tempList=listData.map((value){
      return Container(
          child: Column(
            children:<Widget>[
              Image.network(value['imageUrl']),
              SizedBox(height:12),
              Text(value['title'])
            ],
          ),
          decoration: BoxDecoration(
            border:Border.all(
              color:Color.fromRGBO(233,233,233,0.9),
              width:1
            )
          ),
        );
      });
      return tempList.toList();
   }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
       crossAxisSpacing: 20.0,//水平子widget之间的距离
       mainAxisSpacing: 20.0,//垂直Widget之间的距离
       padding:EdgeInsets.all(10),
       crossAxisCount: 2,//一行的widget数量
      //  childAspectRatio: 0.7,//宽度和高度的比例
       children: this._getListData(),
    );
  }
}

