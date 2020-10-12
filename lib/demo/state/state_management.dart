import 'package:flutter/material.dart';

class StateManagementDemo extends StatefulWidget {
  @override
  _StateManagementDemoState createState() => _StateManagementDemoState();
}

class _StateManagementDemoState extends State<StateManagementDemo> {
  int _count = 0;

  void _increaseCount() {
    setState(() {
      _count +=1;
    });
    print(_count);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateManagementDemo'),
        elevation: 0.0,
      ),
      body: CounterWrapper(_count, _increaseCount),
      floatingActionButton: FloatingActionButton(
        onPressed: _increaseCount,
        child: Icon(Icons.add),
      ),
    );
  }
}

class CounterWrapper extends StatelessWidget {
  final int count;
  final VoidCallback increaseCount;

  CounterWrapper(this.count, this.increaseCount);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CounterDemo(count, increaseCount),
    );
  }
}

class CounterDemo extends StatelessWidget {
  final int count;
  final VoidCallback increaseCount;

  CounterDemo(this.count, this.increaseCount);

  @override
  Widget build(BuildContext context) {
    return ActionChip(
          label: Text('$count'),
          onPressed: increaseCount,
        );
  }
}