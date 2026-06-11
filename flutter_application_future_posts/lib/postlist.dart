import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_future_posts/posts.mode.dart';
import 'package:http/http.dart' as http;

class PostListScreen extends StatefulWidget {
  const PostListScreen({super.key});

  @override
  State<PostListScreen> createState() => _PostListScreenState();
}

class _PostListScreenState extends State<PostListScreen> {
  void fetchPosts() async {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    final response = await http.get(url);
    // print(response.statusCode);

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      var posts = jsonList.map((json) => PostModel.fromJson(json)).toList();
      print(posts.length);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ElevatedButton(
        onPressed: () {
          fetchPosts();
        },
        child: Text("Fetch Posts !"),
      ),
    );
  }
}
