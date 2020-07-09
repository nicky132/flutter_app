import 'package:flutter/material.dart';
class GetRequestDemo extends StatefulWidget {
  GetRequestDemo({Key key}) : super(key: key);

  @override
  _GetRequestDemoState createState() => _GetRequestDemoState();
}

class _GetRequestDemoState extends State<GetRequestDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("get请求动态渲染数据")
      ),
      body:Text("get请求动态渲染数据")
    );
  }
}