import 'package:flutter/material.dart';

class PopupMenuDemo extends StatefulWidget {
  @override
  _PopupMenuDemoState createState() => _PopupMenuDemoState();
}

class _PopupMenuDemoState extends State<PopupMenuDemo> {

  String _currentItemTitle = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_PopupMenuDemoState'),
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
                  Text(_currentItemTitle),
                  PopupMenuButton(
                    onSelected: (value) {
                      print(value);
                      setState(() {
                        _currentItemTitle = value;
                      });
                    },
                    itemBuilder: (BuildContext context) => [
                      PopupMenuItem(child: Text('home'), value: 'home',),
                      PopupMenuItem(child: Text('home1'), value: 'home1',),
                      PopupMenuItem(child: Text('home2'), value: 'home2',),

                    ],
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}