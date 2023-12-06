import 'package:fiquebem/diario.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(Feed());
}

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Feed',
      home: SocialFeedScreen(),
    );
  }
}

class SocialFeedScreen extends StatelessWidget {
  final List<Post> posts = [

    Post(

      username: 'Usuário Dr Samuel Pereria',
      postText: 'Busque novas realizações .',
    ),
    Post(
      username: 'Usuário Dr Perciles',
      postText: 'Text 2',
    ),
    Post(
      username: 'Usuário Dr Jorge',
      postText: 'Esta é a postagem do Usuário 4.',
    ),
    // Adicione mais postagens conforme necessário
  ];






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: 2,
        backgroundColor: Colors.blueAccent,
        //fixedColor: Colors.white,
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [BottomNavigationBarItem(
          icon: Icon(Icons.open_in_full_outlined),
          label: ('Exercicios'),


        ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check),
            label: ('Avaliação'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.feed),
            label: ("Feed"),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.dataset_outlined),
            label: ("Diario"),

          ),


          BottomNavigationBarItem(
            icon: Icon(Icons.mark_unread_chat_alt),
            label: ("Chat"),
          ),
        ],
      ),


      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        titleTextStyle: TextStyle(
          color: Colors.white,
        ),
        title: Text("Feed"),
        actions: [
          IconButton(onPressed: () {
            _novaTela(context, TelaDiario());
          },
              icon: Icon(
                  color: Colors.white,
                  Icons.dataset_outlined
              ))
        ],
      ),
      body:  ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return PostCard(post: posts[index]);
      },
    )

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
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              post.postText,
              style: TextStyle(fontSize: 30.0),
            ),
          ],
        ),
      ),
    );
  }
}

void _novaTela(BuildContext context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
    return page;
  }));
}

