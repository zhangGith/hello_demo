import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {

  List<String> _tags = ['a', 'b', 'c'];

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
                Chip(
                  label: Text('dddd'),
                  onDeleted: () {},
                  deleteIconColor: Colors.red,
                  deleteIcon: Icon(Icons.delete),
                  deleteButtonTooltipMessage: 'remove this chip',
                ),
                Divider(color: Colors.grey, height: 32.0),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return Chip(
                      label: Text(tag), 
                      onDeleted: () {
                        setState(() {
                          _tags.remove(tag);
                        });
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: () {
          setState(() {
            _tags = ['a', 'b', 'c'];
          });
        },
      ),
    );
  }
}