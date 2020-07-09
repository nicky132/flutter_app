import 'package:flutter/material.dart';
class TextFieldPage extends StatefulWidget {//要获取、修改表单里的内容，所以选择有状态组件
  TextFieldPage({Key key}) : super(key: key);

  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  var _userName=new TextEditingController();//这个构造函数就是为了初始化赋值,不初始化赋值可以不用实例化这个函数
  var _passWord;//不用初始化赋值的情况
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _userName.text="初始值";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("表单演示页面"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        // child: TextDemo(),//表单多行文本用户名密码输入基本结构
        child: Column(//表单内容改变并赋值
          children:<Widget>[
            TextField(
              decoration: InputDecoration(
                hintText:"请输入用户名",
              ),
              controller: _userName,
              onChanged:(value){
                setState(() {
                  _userName.text=value;
                });
              }
            ),
            SizedBox(height:20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText:"密码",
              ),
              onChanged:(value){
                setState(() {
                  this._passWord=value;
                });
              }
            ),
            SizedBox(height:20),
            Container(
              width:double.infinity,//宽度满屏
              height:40,
              child:RaisedButton(
                child:Text("登录"),
                onPressed:(){
                 print(this._userName.text);
                 print(this._passWord);
                },
                color:Colors.blue,
              )
            ),
          ]
        ),
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  const TextDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(),
      //  SizedBox(height:20),
      //  TextField(
      //    decoration:InputDecoration(
      //      hintText:"请输入搜索内容",
      //      border: OutlineInputBorder(),
      //    ),
      //  ),
      //  TextField(
      //    maxLines: 2,
      //    decoration:InputDecoration(
      //      hintText:"多行文本框",
      //      border: OutlineInputBorder(),
      //    ),
      //  ),
      //  TextField(
      //    decoration:InputDecoration(
      //      border: OutlineInputBorder(),
      //      labelText: "用户名"
      //    ),
      //  ),
      //  TextField(
      //    obscureText: true,
      //    decoration:InputDecoration(
      //      border: OutlineInputBorder(),
      //      labelText: "密码",
      //      labelStyle: TextStyle(
      //        color: Colors.red,
      //        fontSize: 20
      //      )
      //    ),
      //  ),
      TextField(
          decoration:InputDecoration(
            icon:Icon(Icons.people),
            hintText: "请输入用户名",
          ),
        )
      ],
    );
  }
}