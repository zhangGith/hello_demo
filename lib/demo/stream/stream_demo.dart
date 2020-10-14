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

  StreamSubscription _streamSubscription;
  StreamController<String> _streamDemo;

  @override
  void dispose() {
    // TODO: implement dispose
    _streamDemo.close();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('stream begin');
    // Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    _streamDemo = StreamController<String>();
    print('stream listen');
    _streamSubscription = _streamDemo.stream.listen(onData, onError: onError);
    print('stream init');
  }

  void onDone() {
    print('done');
  }

  void onError(error) {
    print('$error');
  }

  void onData(String data) {
    print('$data');
  }
  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 3));
    return 'hello ~';
    // throw 'some error';
  }

  void _pauseStream() {
    print('pause _streamSubscription');
    _streamSubscription.pause();
  }

  void _resumeStream() {
    print('resume _streamSubscription');
    _streamSubscription.resume();
  }

  void _cancelStream() {
    print('cancel _streamSubscription');
    _streamSubscription.cancel();
  }

  void _addStream() async {
    print('stream controller add');
    String data = await fetchData();
    _streamDemo.add(data);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              child: Text('Add'),
              onPressed: _addStream,
            ),
            FlatButton(
              child: Text('pause'),
              onPressed: _pauseStream,
            ),
            FlatButton(
              child: Text('resume'),
              onPressed: _resumeStream,
            ),
            FlatButton(
              child: Text('cancel'),
              onPressed: _cancelStream,
            ),
          ],
        ),
      ),
    );
  }
}