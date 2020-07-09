//Flutter中路由通俗的讲就是页面跳转，在Flutter中通过Navigator组件管理路由导航，
//并提供了管理堆栈的方法，Navigator.push和Navigator.pop，Flutter有两种配置路由跳转方式
//1基本路由；2命名路由
import 'package:flutter/material.dart';

import 'pages/tabs.dart';

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
