// 1、垂直列表 2、垂直图文列表 3、水平列表 4、动态列表 5、矩阵式列表
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
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[//children里面可以放任意组件
        // Container(),
        // Image.network(src),
        // Text()
        
        // 数据列表左侧带图标
        ListTile(
          leading: Image.network("http://image2.sina.com.cn/ent/d/2005-06-21/U105P28T3D758537F326DT20050621155831.jpg"),
          title:Text("疫情监测"),
          subtitle: Text("人类传染病疫情监测"),
        ),
        ListTile(
          leading: Image.network("http://image2.sina.com.cn/ent/d/2005-06-21/U105P28T3D758537F326DT20050621155831.jpg"),
          title:Text("疫情监测"),
          subtitle: Text("人类传染病疫情监测"),
        ),
         ListTile(
          leading: Image.network("http://image2.sina.com.cn/ent/d/2005-06-21/U105P28T3D758537F326DT20050621155831.jpg"),
          title:Text("疫情监测"),
          subtitle: Text("人类传染病疫情监测"),
        ),
         ListTile(
          leading: Image.network("http://image2.sina.com.cn/ent/d/2005-06-21/U105P28T3D758537F326DT20050621155831.jpg"),
          title:Text("疫情监测"),
          subtitle: Text("人类传染病疫情监测"),
        ),

        // 数据列表左侧带图标
        // ListTile(
        //   leading: Icon(Icons.settings,size:40),
        //   title:Text("疫情监测"),
        //   subtitle: Text("人类传染病疫情监测"),
        // ),
        // ListTile(
        //   // leading: Icon(Icons.home),
        //   title:Text("疫情监测"),
        //   subtitle: Text("人类传染病疫情监测"),
        //   trailing: Icon(Icons.home),//图片放在列表数据的后面
        // ),
        //  ListTile(
        //   leading: Icon(Icons.settings),
        //   title:Text("疫情监测"),
        //   subtitle: Text("人类传染病疫情监测"),
        // ),
        //  ListTile(
        //   leading: Icon(Icons.pages),
        //   title:Text("疫情监测"),
        //   subtitle: Text("人类传染病疫情监测"),
        // ),


      //  垂直列表
        // ListTile(
        //   title:Text(
        //     "疫情监测",
        //     style:TextStyle(
        //       fontSize: 24
        //     )),
        //   subtitle: Text("人类传染病疫情监测"),
        // ),
        // ListTile(
        //   title:Text(
        //     "疫情监测",
        //     style:TextStyle(
        //       fontSize: 24
        //     )),
        //   subtitle: Text("人类传染病疫情监测"),
        // ),
        // ListTile(
        //   title:Text(
        //     "疫情监测",
        //     style:TextStyle(
        //       fontSize: 24
        //     )),
        //   subtitle: Text("人类传染病疫情监测"),
        // ),
        // ListTile(
        //   title:Text(
        //     "疫情监测",
        //     style:TextStyle(
        //       fontSize: 24
        //     )),
        //   subtitle: Text("人类传染病疫情监测"),
        // ),
      ],
    );
  }
}

