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
    // fetchData().then((value) => print(value));
/*
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

    final toPostJson = postModel.toJson();
    print(toPostJson);
    */
  }

  Future<List<Post>> fetchPosts() async {
    final response =
        await http.get('https://resources.ninghao.net/demo/posts.json');
    // print('status: ${response.statusCode}');
    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      List<Post> posts = responseBody['posts']
          .map<Post>((item) => Post.fromJson(item))
          .toList();
      return posts;
    } else {
      throw Exception('failed to fetch posts');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchPosts(),
      builder: (context, snapshot) {
        print('data : ${snapshot.data}');
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Text('waiting...'),
          );
        }
        return ListView(
          children: snapshot.data.map<Widget>((item) {
            return ListTile(
              title: Text(item.title),
              subtitle: Text(item.author),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(item.imageUrl),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}

class Post {
  final int id;
  final String title;
  final String description;
  final String author;
  final String imageUrl;

  Post(
    this.id,
    this.title,
    this.description,
    this.author,
    this.imageUrl,
  );

  Post.fromJson(Map json)
      : id = json['id'],
        title = json['title'],
        description = json['description'],
        author = json['author'],
        imageUrl = json['imageUrl'];

  Map toJson() => {
        'id': id,
        'title': title,
        'description': description,
        'author': author,
        'imageUrl': imageUrl,
      };
}
