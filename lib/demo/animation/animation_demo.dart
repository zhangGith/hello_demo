import 'package:flutter/material.dart';

class AnimationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimationDemo'),
        elevation: 0.0,
      ),
      body: AnimationDemoHome(),
    );
  }
}

class AnimationDemoHome extends StatefulWidget {
  @override
  _AnimationDemoHomeState createState() => _AnimationDemoHomeState();
}

class _AnimationDemoHomeState extends State<AnimationDemoHome>
    with TickerProviderStateMixin {
  AnimationController animationDemoController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationDemoController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 3000),
      lowerBound: 32.0,
      upperBound: 100.0,
      value: 32.0,
    );

    animationDemoController.addListener(() {
      // print('${animationDemoController.value}');
      setState(() {});
    });

    animationDemoController.addStatusListener((status) {
      print(status);
    });

    //开始播放动画
    // animationDemoController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationDemoController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        icon: Icon(Icons.favorite),
        iconSize: animationDemoController.value,
        onPressed: () {
          // animationDemoController.forward();
          switch (animationDemoController.status) {
            case AnimationStatus.completed:
              animationDemoController.reverse();
              break;
            default:
              animationDemoController.forward();
          }
        },
      ),
    );
  }
}
