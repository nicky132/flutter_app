import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class DialogPage extends StatefulWidget {
  DialogPage({Key key}) : super(key: key);

  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  _alertDialog() async{
    var result= await showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          title: Text("提示信息!"),
          content: Text("您确定要删除吗？"),
          actions: <Widget>[
            FlatButton(
              onPressed: (){
                print("取消");
                Navigator.pop(context,'Cancel');
              }, 
              child: Text("取消"),
            ),
            FlatButton(
              onPressed: (){
                print("确定");
                Navigator.pop(context,'Ok');
              }, 
              child: Text("确定"),
            ),
          ],
        );
      },
    );
    print(result);
  }
  _simpleDialog() async{
    var result= await showDialog(
      context: context,
      builder: (context){
        return SimpleDialog(
          title: Text("选择内容"),
          children: <Widget>[
            SimpleDialogOption(
              child:Text("Option A"),
              onPressed: (){
                print("Option A");
                Navigator.pop(context,'A');
              },
            ),
            Divider(),
            SimpleDialogOption(
              child:Text("Option B"),
              onPressed: (){
                print("Option B");
                Navigator.pop(context,'B');
              },
            ),
            Divider(),
            SimpleDialogOption(
              child:Text("Option C"),
              onPressed: (){
                print("Option C");
                Navigator.pop(context,'C');
              },
            ),
            Divider(),
            SimpleDialogOption(
              child:Text("Option D"),
              onPressed: (){
                print("Option D");
                Navigator.pop(context,'D');
              },
            ),
            Divider(),
            SimpleDialogOption(
              child:Text("Option E"),
              onPressed: (){
                print("Option E");
                Navigator.pop(context,'E');
              },
            ),
            Divider(),
            SimpleDialogOption(
              child:Text("Option F"),
              onPressed: (){
                print("Option F");
                Navigator.pop(context,'F');
              },
            ),
            Divider(),
            SimpleDialogOption(
              child:Text("Option G"),
              onPressed: (){
                print("Option G");
                Navigator.pop(context,'G');
              },
            ),
            Divider(),
            SimpleDialogOption(
              child:Text("Option H"),
              onPressed: (){
                print("Option H");
                Navigator.pop(context,'H');
              },
            ),
            Divider(),
            SimpleDialogOption(
              child:Text("Option I"),
              onPressed: (){
                print("Option I");
                Navigator.pop(context,'I');
              },
            ),
            Divider(),
            SimpleDialogOption(
              child:Text("Option J"),
              onPressed: (){
                print("Option J");
                Navigator.pop(context,'J');
              },
            ),
            Divider(),
            SimpleDialogOption(
              child:Text("Option K"),
              onPressed: (){
                print("Option K");
                Navigator.pop(context,'K');
              },
            ),
          ],
        );
      },
    );
    print(result);
  }
  _modeBottomSheet() async{
    var result= await showModalBottomSheet(
      context: context, 
      builder: (context){
        return Container(
          height: 200,
          child:Column(
            children: <Widget>[
              ListTile(
                title:Text("分享 A"),
                onTap:(){
                  Navigator.pop(context,'分享 A');
                }
              ),
              Divider(),
              ListTile(
                title:Text("分享 B"),
                onTap:(){
                  Navigator.pop(context,'分享 B');
                }
              ),
              Divider(),
              ListTile(
                title:Text("分享 C"),
                onTap:(){
                  Navigator.pop(context,'分享 C');
                }
              ),
            ],
          ),
        );
      },
    );
    print(result);
  }
  _toast(){
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Dialog"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:<Widget>[
            RaisedButton(
              child:Text("alert弹出框-AlertDialog"),
              onPressed:_alertDialog,
            ),
            SizedBox(height:10),
            RaisedButton(
              child:Text("select弹出框-SimpleDialog"),
              onPressed:_simpleDialog,
            ),
            SizedBox(height:10),
            RaisedButton(
              child:Text("ActionSheet底部弹出框-showDialogBottomSheet"),
              onPressed:_modeBottomSheet,
            ),
            SizedBox(height:10),
            RaisedButton(
              child:Text("Toast-fluttertoast第三方库"),
              onPressed:_toast,
            ),
          ]
        ),
      ),
    );
  }
}