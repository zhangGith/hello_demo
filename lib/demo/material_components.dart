
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
            ListItem(title: 'ButtonDemo', page: ButtonDemo(),),
            ListItem(title: 'floatRaisedBtn', page: FloatRaisedBtn(),),
        ],
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final Widget flatBtnDemo = Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  FlatButton(
                    onPressed: () {}, 
                    child: Text('FlatBtn'),
                    splashColor: Colors.grey,
                    textColor: Theme.of(context).accentColor,
                  ),
                  FlatButton.icon(
                    onPressed: () {}, 
                    icon: Icon(Icons.add),
                    label: Text('btn'),
                    splashColor: Colors.grey,
                    textColor: Theme.of(context).accentColor,
                  ),
              ],
            );

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
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
                  RaisedButton(
                    onPressed: () {}, 
                    child: Text('FlatBtn'),
                    splashColor: Colors.grey,
                    textColor: Theme.of(context).accentColor,
                    elevation: 0.0,
                  ),
                  SizedBox(width: 20.0),
                  RaisedButton.icon(
                    onPressed: () {}, 
                    icon: Icon(Icons.add),
                    label: Text('btn'),
                    splashColor: Colors.grey,
                    textColor: Theme.of(context).accentColor,
                    elevation: 10.0,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _WidgetDemo extends StatelessWidget {
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

              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FloatRaisedBtn extends StatelessWidget {
  final Widget _floatingActionButton = FloatingActionButton(
    onPressed: (){},
    child: Icon(Icons.add),
    elevation: 0.0,
    backgroundColor: Colors.black87,
    // shape: BeveledRectangleBorder(
    //   borderRadius: BorderRadius.circular(30.0),
    // ),
  );

  final Widget _floatingAddActionButton = FloatingActionButton.extended(
    onPressed: () {}, 
    label: Text('add'), 
    icon: Icon(Icons.add),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatRaisedBtn'),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
        shape: CircularNotchedRectangle(),
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