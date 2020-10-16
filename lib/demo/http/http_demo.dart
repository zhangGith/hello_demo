import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class HttpDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HttpDemo'),
        elevation: 0.0,
      ),
      body: HttpDemoHome(),
    );
  }
}

class HttpDemoHome extends StatefulWidget {
  @override
  _HttpDemoHomeState createState() => _HttpDemoHomeState();
}

class _HttpDemoHomeState extends State<HttpDemoHome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // fetchData();

    final post = {
      'title': 'hello',
      'description': 'nice to meet you',
    };
    print(post['title']);
    print(post['description']);

    final postJson = json.encode(post);
    print(postJson);

    final postJsonConverted = json.decode(postJson);
    print(postJsonConverted);
    print(postJsonConverted is Map);

    final postModel = Post.fromJson(postJsonConverted);
    print('title: ${postModel.title}, description: ${postModel.description}');
  }

  void fetchData() async {
    final response =
        await http.get('https://resources.ninghao.net/demo/posts.json');
    print('status: ${response.statusCode}');
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Post {
  final String title;
  final String description;

  Post(
    this.title,
    this.description,
  );

  Post.fromJson(Map json)
      : title = json['title'],
        description = json['description'];
}
