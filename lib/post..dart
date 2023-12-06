import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(SocialFeedApp());
}

class SocialFeedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Feed',
      home: SocialFeedScreen(),
    );
  }
}

class SocialFeedScreen extends StatelessWidget {
  final List<Post> posts = [

    Post(

      username: 'Usuário 1',
      postText: 'Esta é a postagem do Usuário 1.',


    ),
    Post(

      username: 'Usuário 2',
      postText: 'Esta é a postagem do Usuário 2.',

    ),
    Post(

      username: 'Usuário 3',
      postText: 'Esta é a postagem do Usuário 3.',
    ),
    // Adicione mais postagens conforme necessário
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feed Social'),
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return PostCard(post: posts[index]);
        },
      ),
    );
  }
}

class Post {
  final String username;
  final String postText;

  Post({
    required this.username,
    required this.postText,
  });
}

class PostCard extends StatelessWidget {
  final Post post;

  PostCard({
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(

        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,


          children: <Widget>[
            Text(
              'Postado por: ${post.username}',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,

              ),
            ),
            SizedBox(height: 8.0),
            Text(
              post.postText,
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
