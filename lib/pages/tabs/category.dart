// import 'package:flutter/material.dart';
// class CategoryPage extends StatefulWidget {
//   CategoryPage({Key key}) : super(key: key);

//   @override
//   _CategoryPageState createState() => _CategoryPageState();
// }

// class _CategoryPageState extends State<CategoryPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Text("分类");
//   }
// }

//flutter路由例子
// import 'package:flutter/material.dart';
// import '../form.dart';
// class CategoryPage extends StatefulWidget {
//   CategoryPage({Key key}) : super(key: key);

//   @override
//   _CategoryPageState createState() => _CategoryPageState();
// }

// class _CategoryPageState extends State<CategoryPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment:CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         RaisedButton(
//           child:Text("跳转表单页面并传值"),
//           onPressed: (){
//             Navigator.of(context).push(
//               MaterialPageRoute(
//                 builder: (context)=>FormPage(title:"我是表单跳转传值")
//               )
//             );
//           },
//           color:Theme.of(context).accentColor,
//           textTheme: ButtonTextTheme.primary,
//         ),
//       ],
//     );
//   }
// }

//flutter命名路由
import 'package:flutter/material.dart';
class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8, 
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children:<Widget>[
              Expanded(
                child:TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.green,
                  labelColor: Colors.green,
                  unselectedLabelColor:Colors.grey,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs:<Widget>[
                    Tab(text:"热销"),
                    Tab(text:"推荐"),
                    Tab(text:"热门"),
                    Tab(text:"奇闻"),
                    Tab(text:"异事"),
                    Tab(text:"求是"),
                    Tab(text:"律己"),
                    Tab(text:"人物"),
                  ]
                )
              ),
            ]
          ),
        ),
        body: TabBarView(
          children:<Widget>[
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
            ListView(
              children: <Widget>[
                ListTile(
                  title:Text("第三个tab"),
                ),
                ListTile(
                  title:Text("第三个tab"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title:Text("第四个tab"),
                ),
                ListTile(
                  title:Text("第四个tab"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title:Text("第五个tab"),
                ),
                ListTile(
                  title:Text("第五个tab"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title:Text("第六个tab"),
                ),
                ListTile(
                  title:Text("第六个tab"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title:Text("第七个tab"),
                ),
                ListTile(
                  title:Text("第七个tab"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title:Text("第八个tab"),
                ),
                ListTile(
                  title:Text("第八个tab"),
                ),
              ],
            )
          ]
        ),
      )
    );
  }
}