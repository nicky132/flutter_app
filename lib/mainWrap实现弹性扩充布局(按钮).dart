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
      // home: MyHomePage(title: '何政权APP'),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height:600,
      width:300,
      color:Colors.pink,
      child:Wrap(
        spacing: 10,//主轴方向上间距
        runSpacing: 10,//纵轴方向上的间距
        alignment: WrapAlignment.start,
        runAlignment: WrapAlignment.center,//实现纵轴对齐方式要在wrap组件外加一个container
        children:<Widget>[
          MyButton("第一季"),
          MyButton("第二季"),
          MyButton("第三季"),
          MyButton("第四季"),
          MyButton("第五季"),
          MyButton("第六季"),
          MyButton("第七季"),
          MyButton("第八季"),
        ],
      )
    );
  }
}

class MyButton extends StatelessWidget{
  final String text;

  const MyButton(this.text,{Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: (){
      }
      );
  }

}

