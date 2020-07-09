import 'package:flutter/material.dart';
import 'tabs/home.dart';
import 'tabs/category.dart';
import 'tabs/setting.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key,this.index=0}) : super(key: key);
//index设置可选参数默认为0
  @override
  _TabsState createState() => _TabsState(this.index);//index为必选参数
}

class _TabsState extends State<Tabs> {
  int _currentIndex;
  _TabsState(index){
    this._currentIndex=index;
  }
  List _pageList=[
    HomePage(),
    CategoryPage(),
    SettingPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(title:Text('Demo')),
        floatingActionButton:Container(
          height:80,
          width:80,//按钮大小
          padding:EdgeInsets.all(8),
          margin:EdgeInsets.only(top:30),
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(40),
            color:Colors.transparent,
          ),
          child: FloatingActionButton(
            child:Icon(Icons.add,color:Colors.black,size: 40),
            backgroundColor:this._currentIndex==1?Colors.red:Colors.yellow,//选中背景颜色
            onPressed:(){
              // print("FloatingActionButton");
              setState(() {//setState动态更新页面
                this._currentIndex=1;
              });
            }
          ),
        ),
        floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,//浮动图标位置
        body:this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          onTap: (int index){
            //  print(index);
            setState(() {//setState动态更新页面
              this._currentIndex=index;
            });
          },
          iconSize: 40.0,//按钮大小
          fixedColor: Colors.red,//选中颜色
          // type:BottomNavigationBarType.fixed,//可以水平放置有多个按钮
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("首页")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("分类")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("设置")
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.home),
            //   title: Text("首页")
            // ),
          ]
          ),
          drawer: Drawer(
            child:Column(
              children: <Widget>[
                // SizedBox(height:30),
                Row(
                  children: <Widget>[
                    Expanded(
                      child:UserAccountsDrawerHeader(
                        accountName: Text("Nicky"), 
                        accountEmail: Text("xxxqq.com"),
                        currentAccountPicture: CircleAvatar(
                          backgroundImage:NetworkImage("https://www.itying.com/images/flutter/1.png")
                        ),
                        decoration: BoxDecoration(
                          image:DecorationImage(
                            image:NetworkImage("https://www.itying.com/images/flutter/7.png"),
                            fit:BoxFit.cover,
                          )
                        ),
                        otherAccountsPictures:<Widget>[
                          Image.network("https://www.itying.com/images/flutter/2.png"),
                          Image.network("https://www.itying.com/images/flutter/3.png"),
                        ],
                      ),
                    )
                  ],
                ),
                ListTile(
                 leading:CircleAvatar(
                    child: Icon(Icons.home),
                 ),
                 title:Text("我的空间"),
                ),
                Divider(),
                ListTile(
                 leading:CircleAvatar(
                    child: Icon(Icons.people)
                 ),
                 title:Text("用户中心"),
                 onTap: (){
                   Navigator.of(context).pop();//侧边栏隐藏，使点击返回时返回到首页而不是返回到侧边栏上
                   Navigator.pushNamed(context, '/user');
                 },
                ),
                Divider(),
                ListTile(
                 leading:CircleAvatar(
                    child: Icon(Icons.settings),
                 ),
                 title:Text("设置中心"),
                )
              ],
            )
          ),
          endDrawer: Drawer(
            child:Text("右侧侧边栏"),
          ),
      );
  }
}