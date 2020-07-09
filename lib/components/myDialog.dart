//自定义定时器
import 'dart:async';
import 'package:flutter/material.dart';
class MyDialog extends Dialog {
  String title;
  String content;

  MyDialog({this.title="",this.content=""});

  _showTimer(context){
    var timer;
    timer=Timer.periodic(
      Duration(milliseconds:3000),(t){
        print("执行");
        Navigator.pop(context);
        t.cancel();//取消定时器或者timer.cancel
      });
  }
  @override
  Widget build(BuildContext context) {
    _showTimer(context);
    return Material(
      type: MaterialType.transparency,
      // child:Text("自定义dialog")
      child: Center(
        child: Container(
        height:200,
        width: 200,
        color: Colors.white,
        child: Column(
        children: <Widget>[
          Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Text("${this.title}"),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    child: Icon(Icons.close),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          )),
          Divider(),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: Text("${this.content}"),
          )
        ]),
      )),
    );
  }
}