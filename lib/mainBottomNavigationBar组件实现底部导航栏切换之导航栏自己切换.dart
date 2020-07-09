import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Tabs()
      // theme: ThemeData(primarySwatch: Colors.purple,),
      // home: MyHomePage(title: 'NickyAPP'),
    );
  }
}

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(title:Text('FlutterDemo')),
        body:Text("tabBar"),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          onTap: (int index){
            //  print(index);
            setState(() {//setState动态更新页面
              this._currentIndex=index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("首页")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("分类")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("设置")
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.home),
            //   title: Text("首页")
            // ),
          ]
          ),
      );
  }
}