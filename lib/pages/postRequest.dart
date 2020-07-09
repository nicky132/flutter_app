import 'package:flutter/material.dart';
class PostRequest extends StatefulWidget {
  PostRequest({Key key}) : super(key: key);

  @override
  _PostRequestState createState() => _PostRequestState();
}

class _PostRequestState extends State<PostRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("post请求")
      ),
      body:Text("post请求")
    );
  }
}