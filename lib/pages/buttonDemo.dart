import 'package:flutter/material.dart';
class ButtonDemoPage extends StatelessWidget {
  const ButtonDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("按钮演示页面"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings), 
            onPressed: (){

            }
          )
        ],
      ),
      floatingActionButton:FloatingActionButton(
       child:Icon(Icons.add,color:Colors.black,size: 40),
       backgroundColor: Colors.yellow,
       onPressed:(){
         print("FloatingActionButton");
       }
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,//浮动图标位置
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("普通按钮"),
                onPressed: (){
                  print("普通按钮");
                },
              ),
              SizedBox(width:5),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text("颜色按钮"),
                onPressed: (){
                  print("颜色按钮");
                },
              ),
              SizedBox(width:5),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 20,
                child: Text("阴影按钮"),
                onPressed: (){
                  print("阴影按钮");
                },
              ),
            ],
          ),
          // SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton.icon(
                // onPressed: null, //没有写press方法按钮置灰
                onPressed: (){
                  print("图标按钮");
                },
                icon: Icon(Icons.settings), 
                label: Text("图标按钮")
              )
            ],
          ),
          // SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
               height:50,
               width: 300,
               child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 20,
                  child: Text("设置按钮宽高"),
                  onPressed: (){
                    print("设置按钮宽高");
                  },
                ),
              )
            ],
          ),
          // SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child:Container(
                height:40,
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    elevation: 20,
                    child: Text("自适应按钮"),
                    onPressed: (){
                      print("自适应按钮");
                    },
                  ),
                )
              )
            ],
          ),
          // SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("圆角按钮"),
                color:Colors.blue,
                textColor: Colors.white,
                elevation: 20,
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: (){
                  print("圆角按钮");
                },
              ),
              Container(
                height:40,
                child: RaisedButton(
                  child: Text("圆形按钮"),
                  color:Colors.blue,
                  textColor: Colors.white,
                  elevation: 20,
                  splashColor: Colors.red,
                  shape:CircleBorder(
                    side:BorderSide(
                      color:Colors.white
                    )
                  ),
                  onPressed: (){
                    print("圆形按钮");
                  },
                ),
              ),
              FlatButton(
                onPressed: (){
                  print("FlatButton");
                }, 
                child: Text("扁平按钮"),
                color: Colors.blue,
                textColor: Colors.yellow,
              ),
            ],
          ),
          // SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              OutlineButton(
                color:Colors.black,
                textColor: Colors.red,
                child:Text("按钮"), 
                onPressed: () {
                  print("OutlineButton");
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 20,
                margin: EdgeInsets.all(10),
                child:OutlineButton(
                  color:Colors.black,
                  textColor: Colors.red,
                  child:Text("注册"), 
                  onPressed: () {
                    print("OutlineButton");
                  },
                )
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children:<Widget>[
                  RaisedButton(
                    child: Text("登录"),
                    color:Colors.blue,
                    textColor: Colors.white,
                    elevation: 20,
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: (){   
                      print("宽度高度");
                    },
                  ),
                  RaisedButton(
                    child: Text("注册"),
                    color:Colors.blue,
                    textColor: Colors.white,
                    elevation: 20,
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: (){
                      print("宽度高度");
                    },
                  ),
                  MyButton(
                    text:"自定义按钮",
                    height: 40,
                    width:100,
                    pressed: (){
                      print("自定义按钮");
                    },
                  )
                ]
              )
            ],
          ),
        ]
      ),
    );
  }
}

//自定义按钮组件
class MyButton extends StatelessWidget {
  final text;
  final pressed;
  final double width;
  final double height;
  const MyButton({this.text='',this.pressed=null,this.width=80,this.height=30});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:this.height,
      width:this.width,
      child:RaisedButton(
        child: Text(this.text),
        onPressed: this.pressed
      )
    );
  }
}