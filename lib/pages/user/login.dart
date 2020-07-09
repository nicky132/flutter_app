import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("登录")
      ),
      body:Center(
        child:Column(
          children: <Widget>[
            SizedBox(height:40),
            Text("这是一个登陆页,点击登陆会执行登陆操作"),
            RaisedButton(
                child: Text("立即登录"),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              )
          ],
        )
      )
    );
  }
}