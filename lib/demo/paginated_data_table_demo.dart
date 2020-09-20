import 'package:flutter/material.dart';
import '../model/post.dart';

class PostDataSource extends DataTableSource {

  final List<Post> _posts = posts;
  int _selectedCount = 0;

  @override
  // TODO: implement rowCount
  int get rowCount => _posts.length;
  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;
  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => _selectedCount;

  @override
  DataRow getRow(int index) {
    // TODO: implement getRow
    Post post = _posts[index];
    return DataRow.byIndex(
      index: index,
      cells: [
          DataCell(Text(post.author)),
          DataCell(Text(post.title)),
          DataCell(Image.network(post.imageUrl)),
      ],
    );


  }

}

class PaginatedDataTableDemo extends StatefulWidget {
  @override
  _PaginatedDataTableDemoState createState() => _PaginatedDataTableDemoState();
}

class _PaginatedDataTableDemoState extends State<PaginatedDataTableDemo> {

  int _sortColumnIndex;
  bool _sortAscending = true;

  final PostDataSource _postDataSource = PostDataSource();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageDataTableDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            PaginatedDataTable(
              header: Text('Post'),
              source: _postDataSource,
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
            ),
          ],
        ),
      ),
    );
  }
}