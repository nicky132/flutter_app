import 'package:flutter/material.dart';
class TabBarControllerPage extends StatefulWidget {//要实现动态加载更多数据要使用StatefulWidget组件
  TabBarControllerPage({Key key}) : super(key: key);

  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin{
  //继承State<TabBarControllerPage>的时候要实现SingleTickerProviderStateMixin，即也要继承SingleTickerProviderStateMixin
  TabController _tabController;
  @override
  void dispose() {//生命周期函数
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();//组件销毁的时候会触发
  }
  @override
  //生命周期函数
  void initState() { //一加载的时候触发这个initState方法，初始化数据
    super.initState();
    _tabController=new TabController(//实例化一下TabController，并传进去两个参数
      vsync: this,
      length:2
    );
    _tabController.addListener((){
      print(_tabController.index);//打印tab切换索引
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("TabBarController"),
        bottom: TabBar(
          controller: this._tabController,
          tabs: <Widget>[
            Tab(text:"热销"),
            Tab(text:"推荐"),
          ]
        ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          Center(child:Text("热销")),
          Center(child:Text("推荐")),
        ]
      )
    );
  }
}