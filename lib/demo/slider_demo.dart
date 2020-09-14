import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {

  double _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
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
                  Slider(
                    value: _sliderValue, 
                    onChanged: (value) {
                      setState(() {
                        _sliderValue = value;
                      });
                    },
                    activeColor: Theme.of(context).accentColor,
                    inactiveColor: Theme.of(context).accentColor.withOpacity(0.3),
                    min: 0.0,
                    max: 10.0,
                    divisions: 10,
                    label: '${_sliderValue.toInt()}',
                  ),
              ],
            ),
            SizedBox(height: 20.0),
             Text('slidervalue: ${_sliderValue}'),
          ],
        ),
      ),
    );
  }
}