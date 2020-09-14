import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeDemo extends StatefulWidget {
  @override
  _DateTimeDemoState createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {

  final DateTime selectDateTime = DateTime.now();

  _selectDateTime() {
    showDatePicker(context: context, initialDate: selectDateTime, firstDate: DateTime(1900), lastDate: DateTime(2100));
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}