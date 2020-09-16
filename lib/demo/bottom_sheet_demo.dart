import 'package:flutter/material.dart';

class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {

  final _bottomSheetStyleKey = GlobalKey<ScaffoldState>();
  _openBottomSheet() {
    _bottomSheetStyleKey
    .currentState
    .showBottomSheet((context) {
      return BottomAppBar(
          child: Container(
            height: 90.0,
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                Icon(Icons.pause_circle_filled),
                SizedBox(height: 32.0),
                Text('ddd: 20'),
                Expanded(child: Text('adf: 123', textAlign: TextAlign.right,)),
              ],
            ),
          ),
      );
    });
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetStyleKey,
      appBar: AppBar(
        title: Text('BottomSheetDemo'),
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
                  onPressed: _openBottomSheet,
                  child: Text('open bottom sheet dialog'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}