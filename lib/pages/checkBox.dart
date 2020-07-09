import 'package:flutter/material.dart';
class CheckBoxPage extends StatefulWidget {
  CheckBoxPage({Key key}) : super(key: key);

  @override
  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  var flag=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("checkBox"),
      ),
      body: Column(
        children:<Widget>[
          Row(
            children: <Widget>[
              Checkbox(
                activeColor: Colors.red,
                value: this.flag, 
                onChanged: (value){
                  setState((){
                    this.flag=value;
                  });
                }
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text("${this.flag}"),
            ],
          ),
          SizedBox(height:10),
          CheckboxListTile(
            value: this.flag, 
            onChanged: (value){
              setState((){
                this.flag=value;
              });
            },
            title:Text("标题"),
            subtitle: Text("这是二级标题"),
            selected: this.flag
          ),
          Divider(),
          CheckboxListTile(
            value: this.flag, 
            onChanged: (value){
              setState((){
                this.flag=value;
              });
            },
            title:Text("标题"),
            subtitle: Text("这是二级标题"),
            secondary: Icon(Icons.help),
            selected: this.flag
          ),
        ]
      ),
    );
  }
}