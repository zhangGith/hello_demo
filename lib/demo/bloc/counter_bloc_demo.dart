import 'dart:async';
import 'package:flutter/material.dart';

class CounterHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc _counterBloc = CounterProvider.of(context).bloc;

    return Center(
      child: ActionChip(
        label: Text('0'),
        onPressed: () {
          _counterBloc.log();
        },
      ),
    );
  }
}

class CounterActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc _counterBloc = CounterProvider.of(context).bloc;

    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        // _counterBloc.log();
        _counterBloc.counter.add(1);
      },
    );
  }
}

class CounterProvider extends InheritedWidget {
  final Widget child;
  final CounterBloc bloc;

  CounterProvider({
    this.child,
    this.bloc,
  }) : super(child: child);

  static CounterProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType();
  // context.inheritFromWidgetOfExactType(CounterProvider);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }
}

class CounterBloc {
  final _counterActionController = StreamController<int>();
  StreamSink<int> get counter => _counterActionController.sink;

  CounterBloc() {
    _counterActionController.stream.listen(onData);
  }

  void onData(int data) {
    print('stream: $data');
  }

  void log() {
    print('bloc');
  }
}
