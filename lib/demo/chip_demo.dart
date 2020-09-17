import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
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
            Wrap(
              spacing: 8.0,
              runSpacing: 10.0,
              children: [
                Chip(label: Text('adf')),
                Chip(label: Text('ddfefddfefddfefddfefddfef'), backgroundColor: Colors.yellow),
                Chip(label: Text('data'), avatar: CircleAvatar(backgroundColor: Colors.grey, child: Text('D')),),
                Chip(label: Text('ddfff'), avatar: CircleAvatar(backgroundImage: NetworkImage('https://pic4.zhimg.com/v2-3be05963f5f3753a8cb75b6692154d4a_1200x500.jpg'),),),
                Divider(color: Colors.grey, height: 32.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}