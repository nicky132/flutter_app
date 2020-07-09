import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  // ProductPage({Key key}) : super(key: key);
  final Map arguments; 
  ProductPage({Key key,this.arguments}) : super(key: key);
  _ProductPageState createState() => _ProductPageState(arguments:this.arguments);
}

class _ProductPageState extends State<ProductPage> {
  Map arguments;
  _ProductPageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品页${arguments["pid"]}"),
      ),
       body:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
              child: Text("跳转到商品详情"),
              onPressed: () {
                Navigator.pushNamed(context, '/productInfo',arguments: {
                  "pid":456
                });
              },
              color:Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary,
          ),      
        ],
       )
    );
  }
}