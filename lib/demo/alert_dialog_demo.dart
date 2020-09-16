import 'package:flutter/material.dart';
import 'dart:async';

enum Action {
  OK,
  Cancel
}

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {

  String _actionTitle = 'no thing';
  Future _openAlertDialog() async {
    Action action = await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('alert dialog'.toUpperCase()),
          content: Text('subtitle'),
          actions: [
            FlatButton(onPressed: () { Navigator.pop(context, Action.Cancel); }, child: Text('cancel')),
            FlatButton(onPressed: () { Navigator.pop(context, Action.OK); }, child: Text('ok')),
          ],
        );
      },
    );

    switch (action) {
      case Action.OK:
        setState (() {
          _actionTitle = 'ok';
        });
        break;
      case Action.Cancel:
        setState (() {
          _actionTitle = 'cancel';
        });
        break;
      default:
    }
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
            Text('you choice is $_actionTitle'),
            SizedBox(height: 32.0),
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