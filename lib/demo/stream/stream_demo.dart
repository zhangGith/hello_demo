import 'package:flutter/material.dart';
import 'dart:async';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamDemo'),
        elevation: 0.0,
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('stream begin');
    Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    print('stream listen');
    _streamDemo.listen(onData);
    print('stream init');
  }

  void onData(String data) {
    print('$data');
  }
  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 3));
    return 'hello ~';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}