import 'package:flutter/material.dart';

class SteperDemo extends StatefulWidget {
  @override
  _SteperDemoState createState() => _SteperDemoState();
}

class _SteperDemoState extends State<SteperDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SteperDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Theme(
              data: Theme.of(context).copyWith(
                primaryColor: Colors.black,
              ), 
              child: Stepper(steps: [
                Step(
                  title: Text('login'), 
                  content: Text('content1'),
                  subtitle: Text('addd'),
                  isActive: true,
                ),
                Step(
                  title: Text('login'), 
                  content: Text('content1'),
                  subtitle: Text('addd'),
                  isActive: false,
                ),Step(
                  title: Text('login'), 
                  content: Text('content1'),
                  subtitle: Text('addd'),
                  isActive: false,
                ),
              ]),
              ),
          ],
        ),
      ),
    );
  }
}