import 'package:flutter/material.dart';

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {

  _openAlertDialog() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('alert dialog'.toUpperCase()),
          content: Text('subtitle'),
          actions: [
            FlatButton(onPressed: () { Navigator.pop(context); }, child: Text('cancel')),
            FlatButton(onPressed: () { Navigator.of(context); }, child: Text('ok')),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialogDemo'),
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
                RaisedButton(
                  onPressed: _openAlertDialog,
                  child: Text('open alert dialog'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}