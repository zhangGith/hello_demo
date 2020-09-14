
import 'package:flutter/material.dart';
import './pop_demo.dart';
import './form_demo.dart';
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
             ListItem(title: 'Form', page: FormDemo(),),
            ListItem(title: 'PopDemo', page: PopupMenuDemo(),),
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

    final Widget _flatBtnDemo = Row(
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

    final Widget _raisedBtnDemo = Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Theme(
                    data: Theme.of(context).copyWith(
                      buttonColor: Theme.of(context).accentColor,
                      buttonTheme: ButtonThemeData(
                          textTheme: ButtonTextTheme.primary,
                          // shape: BeveledRectangleBorder(
                          //   borderRadius: BorderRadius.circular(30.0),
                          // ),
                          shape: StadiumBorder(),
                      ),
                    ), 
                    child: RaisedButton(
                      onPressed: () {}, 
                      child: Text('FlatBtn'),
                      splashColor: Colors.grey,
                      // color: Theme.of(context).accentColor,
                      // textColor: Colors.white,
                      // textTheme: ButtonTextTheme.primary,
                      elevation: 0.0,
                    ),
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
            );

    final Widget _outlineBtnDemo = Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Theme(
                    data: Theme.of(context).copyWith(
                      buttonColor: Theme.of(context).accentColor,
                      buttonTheme: ButtonThemeData(
                          textTheme: ButtonTextTheme.primary,
                          // shape: BeveledRectangleBorder(
                          //   borderRadius: BorderRadius.circular(30.0),
                          // ),
                          shape: StadiumBorder(),
                      ),
                    ), 
                    child: OutlineButton(
                      onPressed: () {}, 
                      child: Text('FlatBtn'),
                      splashColor: Colors.grey[100],
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      textColor: Colors.black,
                      highlightedBorderColor: Colors.grey,
                      // color: Theme.of(context).accentColor,
                      // textColor: Colors.white,
                      // textTheme: ButtonTextTheme.primary,
                    ),
                  ),
                  SizedBox(width: 20.0),
                  OutlineButton.icon(
                    onPressed: () {}, 
                    icon: Icon(Icons.add),
                    label: Text('btn'),
                    splashColor: Colors.grey,
                    textColor: Theme.of(context).accentColor,
                  ),
              ],
            );

    final Widget _containerDemo = Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 160.0,
                  child: OutlineButton(
                      onPressed: () {}, 
                      child: Text('FlatBtn'),
                      splashColor: Colors.grey[100],
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      textColor: Colors.black,
                      highlightedBorderColor: Colors.grey,
                      // color: Theme.of(context).accentColor,
                      // textColor: Colors.white,
                      // textTheme: ButtonTextTheme.primary,
                    ),
                  ),
              ],
            );
    final Widget _expandDemo = Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: OutlineButton(
                      onPressed: () {}, 
                      child: Text('FlatBtn'),
                      splashColor: Colors.grey[100],
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      textColor: Colors.black,
                      highlightedBorderColor: Colors.grey,
                      // color: Theme.of(context).accentColor,
                      // textColor: Colors.white,
                      // textTheme: ButtonTextTheme.primary,
                    ),
                  ),
                  SizedBox(width:20.0),
                  Expanded(
                    flex: 2,
                  child: OutlineButton(
                      onPressed: () {}, 
                      child: Text('FlatBtn'),
                      splashColor: Colors.grey[100],
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      textColor: Colors.black,
                      highlightedBorderColor: Colors.grey,
                      // color: Theme.of(context).accentColor,
                      // textColor: Colors.white,
                      // textTheme: ButtonTextTheme.primary,
                    ),
                  ),
              ],
            );

    final Widget _buttonBarDemo = Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Theme(
                  data: Theme.of(context).copyWith(
                    buttonTheme: ButtonThemeData(
                      padding: EdgeInsets.symmetric(horizontal: 32.0),
                    ),
                  ), 
                child: ButtonBar(
                  children: <Widget>[
                    OutlineButton(
                      onPressed: () {}, 
                      child: Text('FlatBtn'),
                      splashColor: Colors.grey[100],
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      textColor: Colors.black,
                      highlightedBorderColor: Colors.grey,
                      // color: Theme.of(context).accentColor,
                      // textColor: Colors.white,
                      // textTheme: ButtonTextTheme.primary,
                    ),
                    OutlineButton(
                      onPressed: () {}, 
                      child: Text('FlatBtn'),
                      splashColor: Colors.grey[100],
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      textColor: Colors.black,
                      highlightedBorderColor: Colors.grey,
                      // color: Theme.of(context).accentColor,
                      // textColor: Colors.white,
                      // textTheme: ButtonTextTheme.primary,
                    ),
                  ],
                ),
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
            _flatBtnDemo,
            _raisedBtnDemo,
            _outlineBtnDemo,
            _containerDemo,
            _expandDemo,
            _buttonBarDemo,
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