import 'package:flutter/material.dart';
import './model/post.dart';
import './demo/list_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }
}

class Home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu), 
            tooltip: 'menu show',
            onPressed: () => debugPrint('menu'),
            ),

            actions: [
              IconButton(
                icon: Icon(Icons.search), 
                tooltip: 'Search',
                onPressed: () => debugPrint('Search'),
              ),
              IconButton(
                icon: Icon(Icons.more_horiz), 
                tooltip: 'more_horiz',
                onPressed: () => debugPrint('more_horiz'),
              ),
            ],

          title: Text('ni hao'.toUpperCase()),
        ),
        body: null,
      );
  }
}


