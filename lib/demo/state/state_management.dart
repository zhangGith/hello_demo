import 'package:flutter/material.dart';

class StateManagementDemo extends StatefulWidget {
  @override
  _StateManagementDemoState createState() => _StateManagementDemoState();
}

class _StateManagementDemoState extends State<StateManagementDemo> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateManagementDemo'),
        elevation: 0.0,
      ),
      body: CounterDemo(_count),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count +=1;
          });
          print(_count);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class CounterDemo extends StatelessWidget {
  final int count;

  CounterDemo(this.count);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Chip(
          label: Text('$count'),
        ),
      );
  }
}