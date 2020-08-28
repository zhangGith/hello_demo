import 'package:flutter/material.dart';
import './model/post.dart';
import './demo/list_view.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/basic_demo.dart';
import './demo/layout_demo.dart';
import './demo/view_demo.dart';
import './demo/sliver_demo.dart';
import './demo/navigator_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: NavigatorDemo(),
      initialRoute: '/',
      routes: {
        '/': (context) => NavigatorDemo(),
        '/about': (context) => PageDemo(title: 'about'),
      },
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Colors.white,
        splashColor: Colors.white70,
      ),
    );
  }
}

class Home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, 
      child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            elevation: 0.0,
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

              bottom: TabBar(
                unselectedLabelColor: Colors.black38,
                indicatorColor: Colors.black54,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 1.0,
              
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.local_florist)),
                  Tab(icon: Icon(Icons.change_history)),
                  Tab(icon: Icon(Icons.directions_bike)),
                  Tab(icon: Icon(Icons.view_quilt)),
                ]
              ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              // Icon(Icons.change_history, size: 128.0, color: Colors.black12),
              BasicDemo(),
              LayoutDemo(),
              SliverDemo(),
            ]
          ),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
        ),
      );
  }
}


