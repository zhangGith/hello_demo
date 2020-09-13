
import 'package:flutter/material.dart';

class MaterailComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterailComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
            ListItem(title: 'floatRaisedBtn', page: FloatRaisedBtn(),),
        ],
      ),
    );
  }
}

class FloatRaisedBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatRaisedBtn'),
        elevation: 0.0,
      ),
    );
  }
}

class ListItem extends StatelessWidget {

  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}