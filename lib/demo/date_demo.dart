import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class DateTimeDemo extends StatefulWidget {
  @override
  _DateTimeDemoState createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {

  DateTime selectDateTime = DateTime.now();

  _selectDateTime() async {
    final DateTime date = await showDatePicker(context: context, initialDate: selectDateTime, firstDate: DateTime(1900), lastDate: DateTime(2100));

    if (date == null) return;
    
    setState(() {
      selectDateTime = date;
    });

  }

  TimeOfDay selectedTime = TimeOfDay(hour: 8, minute: 30);

  _selectTime() async {
    final TimeOfDay time = await showTimePicker(context: context, initialTime: selectedTime);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  InkWell(
                    onTap: _selectDateTime,
                    child: Row(
                      children: <Widget>[
                        Text(DateFormat.yMMMMd().format(selectDateTime)),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: _selectTime,
                    child: Row(
                      children: <Widget>[
                        Text(selectedTime.format(context)),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}