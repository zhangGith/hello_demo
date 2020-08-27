
import 'package:flutter/material.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Container(
          color: Colors.red,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'one',
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.white,
            ),
          ),
        ),

        Container(
          color: Colors.blue,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'two',
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.white,
            ),
          ),
        ),

        Container(
          color: Colors.green,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'three',
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}