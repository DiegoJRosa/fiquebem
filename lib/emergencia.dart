import 'package:fiquebem/feed.dart';
import 'package:flutter/material.dart';

import 'chat.dart';
class Emergencia extends StatelessWidget {
  const Emergencia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar (
        currentIndex: 2,
        backgroundColor: Colors.blueAccent,
        //fixedColor: Colors.white,
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [BottomNavigationBarItem(
          icon: Icon(Icons.open_in_full_outlined),
          label:('Exercicios'),

        ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check),
            label:('Avaliação'),
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
          color:Colors.white,
        ),
        title: Text("Disque 188! VOCÊ NÂO ESTÁ BEM!"),
        actions: [
          IconButton(onPressed:() {
            _novaTela(context, Feed());
          },
              icon: Icon(
                  color:Colors.white,
                  Icons.feed
              ))
        ],
      ),
    );
  }
}
void _novaTela(BuildContext context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
    return page;
  }));
}