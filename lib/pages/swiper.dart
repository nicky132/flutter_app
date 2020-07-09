import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  SwiperPage({Key key}) : super(key: key);

  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  List<Map> imgList=[
    {
      "url":"http://image2.sina.com.cn/ent/d/2005-06-21/U105P28T3D758537F326DT20050621155831.jpg",
    },
    {
      "url":"http://image2.sina.com.cn/ent/d/2005-06-21/U105P28T3D758537F326DT20050621155831.jpg",
    },
    {
      "url":"http://image2.sina.com.cn/ent/d/2005-06-21/U105P28T3D758537F326DT20050621155831.jpg",
    },
    {
      "url":"http://image2.sina.com.cn/ent/d/2005-06-21/U105P28T3D758537F326DT20050621155831.jpg",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("轮播图组件演示"),
      ),
      // body:Text("轮播图演示"),
      // body: new Swiper(
      //   itemBuilder: (BuildContext context,int index){
      //     return new Image.network(
      //       imgList[index]["url"],
      //       fit: BoxFit.fill,
      //     );
      //   },
      //   itemCount: imgList.length,
      //   // pagination: new SwiperPagination(),
      //   // control: new SwiperControl(),
      // ),
      body:Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 150,
            child:AspectRatio(//适配所有屏幕
              aspectRatio: 16/9,
              child: Swiper(
                itemBuilder: (BuildContext context,int index){
                  return new Image.network(
                    imgList[index]["url"],
                    fit: BoxFit.fill,
                  );
                },
                itemCount: imgList.length,
                pagination: new SwiperPagination(),
                // control: new SwiperControl(),
                loop: true,
                autoplay:true,
              ),
            ),
          )
        ],
      ),
    );
  }
}