import 'package:flutter/material.dart';
class ProductInfoPage extends StatefulWidget {
  final Map arguments;
  ProductInfoPage({Key key,this.arguments}) : super(key: key);
  @override
  _ProductInfoPageState createState() => _ProductInfoPageState(arguments:this.arguments);
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  Map arguments;
  _ProductInfoPageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold( //不加scaffold，直接用Container就没有页面样式，一片黑
      appBar:AppBar(
        title:Text("商品详情"),
      ),
      body:Container(
        child:Text("pid=${arguments["pid"]}"),
      ),
    );
  }
}