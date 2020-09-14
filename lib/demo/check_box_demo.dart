import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool _checkboxvalue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBoxDemo'),
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
                  Checkbox(
                    value: _checkboxvalue, 
                    onChanged: (value) {
                      setState(() {
                        _checkboxvalue = value;
                      });
                    },
                    checkColor: Colors.black,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}