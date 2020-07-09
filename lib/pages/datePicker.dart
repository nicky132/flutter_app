//Future返回类型是异步类型
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DatePickerDemo extends StatefulWidget {
  DatePickerDemo({Key key}) : super(key: key);

  @override
  _DatePickerDemoState createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  var now=DateTime.now();
  DateTime _nowDate=DateTime.now();

  _showDatePicker(){
    showDatePicker(
      context: context,
      initialDate: _nowDate,
      firstDate: DateTime(1980),
      lastDate: DateTime(2000),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // print(now);//2020-02-20 15:57:00.402694
    // print(now.millisecondsSinceEpoch); //时间戳
    // print(DateTime.fromMicrosecondsSinceEpoch(1582185301511));
    // print(DateTime.fromMicrosecondsSinceEpoch(now.millisecondsSinceEpoch));
    // print(formatDate(DateTime.now(), [yyyy, '年', mm, '月', dd]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("DatePicker"),
      ),
      body:Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child:Row(
                  children:<Widget>[
                    // Text("${formatDate(_dateTime, [yyyy, '-', mm, '-', dd,' ',HH, ':', nn, ':', ss])}"),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
              //  onTap: _showDatepicker,
                onTap:_showDatePicker,
              )
            ],
          )
        ],
      )
    );
  }
}