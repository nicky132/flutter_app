import 'package:flutter/material.dart';
class RadioPage extends StatefulWidget {
  RadioPage({Key key}) : super(key: key);

  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  int sex=1;//1男2女
  bool flag=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("radio")
      ),
      body:Padding(
        padding:EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            // Row(
            //   children: <Widget>[//按钮组
            //     Text("男"),
            //     Radio(
            //       value: 1, 
            //       groupValue: this.sex, 
            //       onChanged: (value){
            //         setState(() {
            //           this.sex=value;
            //         });
            //       }
            //     ),
            //     Text("女"),
            //     Radio(
            //       value: 2, //value值跟sex值相同时该radio被选中
            //       groupValue: this.sex, 
            //       onChanged: (value){
            //         setState(() {
            //           this.sex=value;
            //         });
            //       }
            //     )
            //   ],
            // ),
            // Row(
            //   children: <Widget>[
            //     Text("${this.sex}"),
            //     Text("${this.sex==1?'男':'女'}")
            //   ],
            // ),
            SizedBox(height:20),
            RadioListTile(//按钮组
              value: 1, //value值跟sex值相同时该radio被选中
              groupValue: this.sex, 
              onChanged: (value){
                setState(() {
                  this.sex=value;
                });
              },
              title:Text("标题"),
              subtitle: Text("这是二级标题"),
              secondary: Icon(Icons.help),
              selected: this.sex==1
            ),
            RadioListTile(//按钮组
              value: 2, //value值跟sex值相同时该radio被选中
              groupValue: this.sex, 
              onChanged: (value){
                setState(() {
                  this.sex=value;
                });
              },
              title:Text("标题"),
              subtitle: Text("这是二级标题"),
              secondary: Image.network("http://image2.sina.com.cn/ent/d/2005-06-21/U105P28T3D758537F326DT20050621155831.jpg"),
              selected: this.sex==2
            ),
            SizedBox(height:20),
            Switch(
              value:this.flag,
              onChanged:(value){
                setState(() {
                  print(value);
                  this.flag=value;
                });
              }
            )
          ],
        ),
      )
    );
  }
}