import 'package:flutter/material.dart';
import '../model/post.dart';

class DataTableDemo extends StatefulWidget {
  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {

  int _sortColumnIndex;
  bool _sortAscending = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            DataTable(
              sortColumnIndex: _sortColumnIndex,
              sortAscending: _sortAscending,
              // onSelectAll: (value) {},
              columns: [
                DataColumn(
                  label: Text('code'),
                  onSort: (columnIndex, ascending) {
                    setState(() {
                      _sortAscending = ascending;
                      _sortColumnIndex = columnIndex;

                      posts.sort((a, b) {
                        if (!ascending) {
                          final c = a;
                          a = b;
                          b = c;
                        }
                        return a.title.length.compareTo(b.title.length);
                      });
                    });
                  },
                ),
                DataColumn(label: Text('code')),
                DataColumn(label: Text('image')),
                ], 
              rows: posts.map((post) {
                return DataRow(
                  selected: post.selected,
                  onSelectChanged: (value) {
                    setState(() {
                      post.selected = value;
                    });
                  },
                  cells: [
                    DataCell(Text(post.author)),
                    DataCell(Text(post.title)),
                    DataCell(Image.network(post.imageUrl)),
                  ],
                  );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}