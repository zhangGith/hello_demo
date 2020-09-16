import 'package:flutter/material.dart';

class SimpleDialogDemo extends StatefulWidget {
  @override
  _SimpleDialogDemoState createState() => _SimpleDialogDemoState();
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {

  _openSimleDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text("simple"),
          children: [],
        );
      },
    );
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