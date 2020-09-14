import 'package:flutter/material.dart';

class SwitchDmeo extends StatefulWidget {
  @override
  _SwitchDmeoState createState() => _SwitchDmeoState();
}

class _SwitchDmeoState extends State<SwitchDmeo> {

  bool _switchValue = false;

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
            SwitchListTile(
              value: _switchValue, 
              onChanged: (value){
                setState(() {
                  _switchValue = value;
                });
              },
              title: Text('A'),
              subtitle: Text('A sub'),
              secondary: Icon(_switchValue ? Icons.inbox : Icons.info),
              selected: _switchValue,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  // Text(_switchValue ? '😄' : '😔', style: TextStyle(fontSize: 32.0)),
                  // Switch(
                  //   value: _switchValue, 
                  //   onChanged: (value) {
                  //     setState(() {
                  //       _switchValue = value;
                  //     });
                  //   }
                  // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}