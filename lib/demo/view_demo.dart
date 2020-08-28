
import 'package:flutter/material.dart';
import 'package:hello_demo/model/post.dart';

class ViewDemo extends StatelessWidget {

 
  @override
  Widget build(BuildContext context) {
    return GridViewCountDemo();
  }
}



class GridViewExtentDemo extends StatelessWidget {

  List<Widget> _buildTitles(int length) {
    return List.generate(length, (index) {
        return Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'item $index',
            style: TextStyle(color: Colors.grey, fontSize:18.0),
          ),
        );
    });
  } 
 
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 150.0,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      children: _buildTitles(100),
    );
  }
}

class GridViewCountDemo extends StatelessWidget {

  List<Widget> _buildTitles(int length) {
    return List.generate(length, (index) {
        return Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'item $index',
            style: TextStyle(color: Colors.grey, fontSize:18.0),
          ),
        );
    });
  } 
 
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      children: _buildTitles(100),
    );
  }
}

class GridViewBuilderDemo extends StatelessWidget {

  Widget _gridItemBuilder(BuildContext context, int index) {
      return Container(
        child: Image.network(
          posts[index].imageUrl,
          fit: BoxFit.cover,
        )
      );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent (
        // crossAxisCount: 3,
        maxCrossAxisExtent: 150.0,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
   Widget _pageImemBuilder(BuildContext context, int index) {
    return Stack(
      children: [
        SizedBox.expand(
          child: Image.network(posts[index].imageUrl, fit: BoxFit.cover),
        ),

        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              Text(
                posts[index].author,
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
            ],
          )
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: _pageImemBuilder,
      itemCount: posts.length,
      );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      // pageSnapping: false,
      // reverse: true,
      // scrollDirection: Axis.vertical,
      onPageChanged: (currentPage) => debugPrint('page: $currentPage'),
      controller: PageController(
        keepPage: false,
        initialPage: 1,
        viewportFraction: 0.8,
      ),
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