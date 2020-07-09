//Flutter中路由通俗的讲就是页面跳转，在Flutter中通过Navigator组件管理路由导航，
//并提供了管理堆栈的方法，Navigator.push和Navigator.pop，Flutter有两种配置路由跳转方式
//1基本路由；2命名路由
import 'package:flutter/material.dart';
import 'routes/routes.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//去掉顶部栏目右侧的图标
      // home:Tabs(),
      initialRoute: '/buttonDemo',
      onGenerateRoute:onGenerateRoute
      );
    }
  }
