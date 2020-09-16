import 'package:flutter/material.dart';
import 'dart:async';

enum Option {
  A, B, C
}

class SimpleDialogDemo extends StatefulWidget {
  @override
  _SimpleDialogDemoState createState() => _SimpleDialogDemoState();
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {

  String _choiceStr = 'not thing';
  Future _openSimleDialog() async {
    final option = await showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text("simple"),
          children: [
            SimpleDialogOption(
              child: Text('a'),
              onPressed: () {
                Navigator.pop(context, Option.A);
              },
            ),
            SimpleDialogOption(
              child: Text('a'),
              onPressed: () {
                Navigator.pop(context, Option.B);
              },
            ),
            SimpleDialogOption(
              child: Text('a'),
              onPressed: () {
                Navigator.pop(context, Option.C);
              },
            ),
          ],
        );
      },
    );
    switch (option) {
      case Option.A:
        setState(() {
          _choiceStr = 'A';
        });
        break;
      case Option.B:
        setState(() {
          _choiceStr = 'B';
        });
        break;
      case Option.C:
        setState(() {
          _choiceStr = 'C';
        });
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_SimpleDialogDemoState'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('your choice is ${_choiceStr}'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _openSimleDialog,
        child: Icon(Icons.menu),
      ),
    );
  }
}