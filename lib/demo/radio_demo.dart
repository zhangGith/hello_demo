import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {

  int _radioValue = 0;

  void _radioHandler(int value) {
    setState(() {
      _radioValue = value;
    });
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
                  Radio(
                    value: 0, 
                    groupValue: _radioValue, 
                    onChanged: _radioHandler,
                    activeColor: Colors.black,
                  ),
                  Radio(
                    value: 1, 
                    groupValue: _radioValue, 
                    onChanged: _radioHandler,
                    activeColor: Colors.black,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}