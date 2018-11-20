import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatelessWidget {
  DatePicker({Key key, this.selectedDate, this.selectDate}) : super(key : key);
  //已经选择的时间
  final DateTime selectedDate;
  //泛型是时间的改变回调当选择时间改变后触发；
  // final ValueChanged<DateTime> selectDate;
  final ValueChanged<DateTime> selectDate;

  //选择时间方法
  _datePicker(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2016, 8),
      lastDate: DateTime(2050),
    );
    if(picked != null) {
      selectDate(picked);
    }
  }
  @override
  Widget build(BuildContext context) {
      return new ListTile(
        title: new InkWell(
          onTap: () => _datePicker(context),
          child: new Row(
            children: <Widget>[
              new Icon(Icons.today),
              new SizedBox(
                width: 20.0,
              ),
              new Text(DateFormat.yMd("en_US").format(selectedDate))
            ],
          ),
        ),
      );
  }
}
