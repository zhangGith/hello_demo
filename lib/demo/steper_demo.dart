import 'package:flutter/material.dart';

class SteperDemo extends StatefulWidget {
  @override
  _SteperDemoState createState() => _SteperDemoState();
}

class _SteperDemoState extends State<SteperDemo> {

  int _currentStep = 0;

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
              child: Stepper(
                currentStep: _currentStep,
                onStepTapped: (value) {
                    setState(() {
                      _currentStep = value;
                    });
                },
                onStepCancel: () {
                  setState(() {
                    _currentStep > 0 ? _currentStep -= 1 : _currentStep = 0;
                  });
                },
                onStepContinue: () {
                  setState(() {
                    _currentStep < 2 ? _currentStep += 1 : _currentStep = 0;
                  });
                },
                steps: [
                Step(
                  title: Text('login'), 
                  content: Text('content1'),
                  subtitle: Text('addd'),
                  isActive: _currentStep == 0,
                ),
                Step(
                  title: Text('login'), 
                  content: Text('content1'),
                  subtitle: Text('addd'),
                  isActive: _currentStep == 1,
                ),Step(
                  title: Text('login'), 
                  content: Text('content1'),
                  subtitle: Text('addd'),
                  isActive: _currentStep == 2,
                ),
              ]),
              ),
          ],
        ),
      ),
    );
  }
}