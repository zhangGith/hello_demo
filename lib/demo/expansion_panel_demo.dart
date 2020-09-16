import 'package:flutter/material.dart';

class ExpansionPanelItem {
  final String headerText;
  final Widget body;
  bool isExpanded;

  ExpansionPanelItem ({
    this.headerText,
    this.body,
    this.isExpanded,
  });
}

class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {

  List<ExpansionPanelItem> _expansionItems;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _expansionItems = <ExpansionPanelItem>[
      ExpansionPanelItem(
        headerText: 'header a',
        body: Container(
                        padding: EdgeInsets.all(16.0),
                        width: double.infinity,
                        child: Text('ddalelefnei ene'),
                      ),
        isExpanded: false,
      ),
      ExpansionPanelItem(
        headerText: 'header b',
        body: Container(
                        padding: EdgeInsets.all(16.0),
                        width: double.infinity,
                        child: Text('ddalelefnei B'),
                      ),
        isExpanded: false,
      ),
      ExpansionPanelItem(
        headerText: 'header C',
        body: Container(
                        padding: EdgeInsets.all(16.0),
                        width: double.infinity,
                        child: Text('ddalelefnei C'),
                      ),
        isExpanded: false,
      ),
    ];
  }

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
                  expansionCallback: (int index, bool isExpaned) {
                    setState(() {
                      _expansionItems[index].isExpanded = !isExpaned;
                    });
                  },
                  children: _expansionItems.map(
                    (ExpansionPanelItem item) {
                      return ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return Container(
                            padding: EdgeInsets.all(16.0),
                            child: Text(item.headerText, style: Theme.of(context).textTheme.title),
                          );
                        }, 
                        body: item.body,
                        isExpanded: item.isExpanded,
                        );
                    }
                  ).toList(),
                  // [
                    // ExpansionPanel(
                    //   headerBuilder: (BuildContext context, bool isExpanded) {
                    //     return Container(
                    //       padding: EdgeInsets.all(16.0),
                    //       child: Text('A', style: Theme.of(context).textTheme.title),
                    //     );
                    //   }, 
                    //   body: Container(
                    //     padding: EdgeInsets.all(16.0),
                    //     width: double.infinity,
                    //     child: Text('ddalelefnei ene'),
                    //   ),
                    //   isExpanded: _isExpansion,
                    // ),
                  // ],
                ),
          ],
        ),
      ),
    );
  }
}