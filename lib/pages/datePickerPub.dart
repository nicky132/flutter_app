import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class DatePickerPubDemo extends StatefulWidget {
  DatePickerPubDemo({Key key}) : super(key: key);

  @override
  _DatePickerPubDemoState createState() => _DatePickerPubDemoState();
}

class _DatePickerPubDemoState extends State<DatePickerPubDemo> {
  var now=DateTime.now();
  bool _showTitle = true;
  DateTime _dateTime;
  // String _format = 'yyyy-MMMM-dd';

  String _format = 'yyyy年M月d日  EEE,H时:m分';
  // String _format = 'yy年M月d日    EEE,H时:m分';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dateTime = now;
    // print(now);//2020-02-20 15:57:00.402694
    // print(now.millisecondsSinceEpoch); //时间戳
    // print(DateTime.fromMicrosecondsSinceEpoch(1582185301511));
    // print(DateTime.fromMicrosecondsSinceEpoch(now.millisecondsSinceEpoch));
    // print(formatDate(DateTime.now(), [yyyy, '年', mm, '月', dd]));
  }

  // _showDatepicker(){
     
  // }
  _showDatePicker() {
    DatePicker.showDatePicker(
      context,
      pickerTheme: DateTimePickerTheme(
        showTitle: _showTitle,
        confirm: Text('确定', style: TextStyle(color: Colors.red)),
        cancel: Text('取消', style: TextStyle(color: Colors.cyan)),
      ),
      minDateTime: DateTime.parse("2001-11-12"),
      maxDateTime: DateTime.parse('2021-11-25'),
      initialDateTime: _dateTime,
      dateFormat: _format,
      pickerMode: DateTimePickerMode.datetime, // show TimePicker
      locale: DateTimePickerLocale.zh_cn,
      onClose: () => print("----- onClose -----"),
      onCancel: () => print('onCancel'),
      onChange: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          // print(dateTime);
          _dateTime = dateTime;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("DatePickerPub"),
      ),
      // body:Text("第三方日期")
      body:Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child:Row(
                  children:<Widget>[
                    Text("${formatDate(_dateTime, [yyyy, '-', mm, '-', dd,' ',HH, ':', nn])}"),
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

// class DatePickerPubDemo extends StatefulWidget {
//   DatePickerPubDemo({Key key}) : super(key: key);

//   @override
//   _DatePickerPubDemoState createState() => _DatePickerPubDemoState();
// }

// class _DatePickerPubDemoState extends State<DatePickerPubDemo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:AppBar(
//         title:Text("datePickerPub")
//       ),
//       body: Text("第三方日期"),
//     );
//   }
// }