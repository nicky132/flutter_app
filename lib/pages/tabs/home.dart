//底部按钮页面传值
// import 'package:flutter/material.dart';
// class HomePage extends StatefulWidget {
//   HomePage({Key key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Text("我是首页组件");
//   }
// }


//flutter路由例子
// import 'package:flutter/material.dart';
// import '../search.dart';
// class HomePage extends StatefulWidget {
//   HomePage({Key key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         RaisedButton(
//           child:Text("跳转搜索页面"),
//           onPressed: (){
//             Navigator.of(context).push(
//               MaterialPageRoute(
//                 builder: (context)=>SearchPage()
//               )
//             );
//           },
//           color:Theme.of(context).accentColor,
//           textTheme: ButtonTextTheme.primary,
//         ),
//         SizedBox(height:20),
//         RaisedButton(
//           child:Text("跳转表单页面并传值"),
//           onPressed: (){

//           },
//           color:Theme.of(context).accentColor,
//           textTheme: ButtonTextTheme.primary,
//         ),
//       ],
//     );
//   }
// }


//Flutter命名路由、get请求post请求
import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Map userInfo={
    //   "username":"张三",
    //   "age":20
    // };
    // var a=json.encode(userInfo);//Map类型转换成json字符串；
    // var u=json.decode(a);//把json字符串转化成Map类型
    // print(json.encode(userInfo));
  }

  _getData() async{
    var url = 'https://www.jumore.com/api/bi/openEvent?type=load&timestamp=1582601923483&ip=58.101.43.193&device=PC&language=zh_CN&engine=Blink&browser=Chrome&os=Windows&osVersion=10.0&version=71.0.3578.98&prevUrl=&currentUrl=www.jumore.com%2F&toUrl=www.jumore.com%2F&userId=%25E6%259C%25AA%25E7%2599%25BB%25E5%25BD%2595&sessionId=ff69e80a-24e6-4440-8684-48d08ea8e780';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      print("111");
      print(response);
      var jsonResponse = convert.jsonDecode(response.body);
      // var itemCount = jsonResponse['totalItems'];
      // print('Number of books about http: $itemCount.');
      print("${jsonResponse}");
    } else {
      print("222");
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text("get请求"),
            onPressed: _getData,
            // onPressed: (){
            //   Navigator.pushNamed(context, '/getRequest');
            // },
          ),
          RaisedButton(
            child: Text("post请求"),
            onPressed: (){
              Navigator.pushNamed(context, '/postRequest');
            },
          ),
          RaisedButton(
            child: Text("Get请求渲染数据演示demo"),
            onPressed: (){
              Navigator.pushNamed(context, '/getRequestDemo');
            },
          ),
          RaisedButton(
            child: Text("http请求数据Demo"),
            onPressed: (){
              Navigator.pushNamed(context, '/http');
            },
          ),
        ],
      ),
    );
  }
}