import 'package:flutter/material.dart';
class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, //顶部tab切换的数量
      child: Scaffold(
        appBar: AppBar(
          title:Text("appBarDemo"),
          // backgroundColor: Colors.red,
          centerTitle: true,//顶部栏目居中显示，无论安卓还是ios
          // leading: IconButton(
          //   icon: Icon(Icons.menu), 
          //   onPressed: (){
          //     print("menu");
          //   }
          // ),
          // actions: <Widget>[
          //   IconButton(
          //     icon: Icon(Icons.search), 
          //     onPressed: (){
          //       print("search");
          //     },
          //   ),
          //   IconButton(
          //     icon: Icon(Icons.settings), 
          //     onPressed: (){
          //       print("settings");
          //     },
          //   ),
          // ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text:"热门"),
              Tab(text:"推荐"),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title:Text("第一个tab"),
                ),
                ListTile(
                  title:Text("第一个tab"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title:Text("第二个tab"),
                ),
                ListTile(
                  title:Text("第二个tab"),
                ),
              ],
            ),
          ],
        ),
    ),
    );
  }
}