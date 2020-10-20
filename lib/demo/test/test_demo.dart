import 'package:flutter/material.dart';

class TestDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestDemo'),
        elevation: 0.0,
      ),
      body: TestHomeDemo(),
    );
  }
}

class TestHomeDemo extends StatefulWidget {
  @override
  _TestHomeDemoState createState() => _TestHomeDemoState();
}

class _TestHomeDemoState extends State<TestHomeDemo> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Chip(
          label: Text('hello'),
        ),
        ActionChip(
          label: Text('$_count'),
          onPressed: () {
            setState(() {
              _count++;
            });
          },
        ),
      ],
    );
  }
}

class HelloTestDemo {
  static greet(String name) {
    return 'hello $name';
  }
}
