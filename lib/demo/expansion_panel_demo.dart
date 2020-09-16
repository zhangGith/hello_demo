import 'package:flutter/material.dart';

class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionPanelDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         
                ExpansionPanelList(
                  children: [
                    ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Container(
                          padding: EdgeInsets.all(16.0),
                          child: Text('A', style: Theme.of(context).textTheme.title),
                        );
                      }, 
                      body: Container(
                        padding: EdgeInsets.all(16.0),
                        width: double.infinity,
                        child: Text('ddalelefnei ene'),
                      ),
                      isExpanded: true,
                    ),
                  ],
                ),
                  
          ],
        ),
      ),
    );
  }
}