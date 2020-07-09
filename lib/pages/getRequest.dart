import 'package:flutter/material.dart';
class GetRequest extends StatefulWidget {
  GetRequest({Key key}) : super(key: key);

  @override
  _GetRequestState createState() => _GetRequestState();
}

class _GetRequestState extends State<GetRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("get请求")
      ),
      body: Text("get请求"),
    );
  }
}