

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fiquebem/emergencia.dart';
import 'package:fiquebem/mensagens/mensagens.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'feed.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<String> messages = [];
  TextEditingController _textController = TextEditingController();

  Future <void> inicializarFirebase() async{
    await Firebase.initializeApp();
    Firebase.initializeApp().whenComplete(() => print ("Conectado ao Firebase"));
  }

  void _sendMessage(BuildContext ctx) {
    String message = _textController.text;
    if (message.isNotEmpty) {
      setState(() {
        messages.add(message);
        _textController.clear();
        Mensagens ms = new Mensagens();
        ms.msg = _textController.text.toString().trim();
        ms.dt = DateTime.now();
      });

    }

    /*CollectionReference instanciaColecaoFirestore = FirebaseFirestore.instance.collection("msg");
    Future<void>addMsg() {
      return instanciaColecaoFirestore
          .doc(ms.dt.toString().trim())
          .set(ms.Json())
          .then((value) => print("mensagem Adicionada"))
          .catchError((onError) => print("Erro ao gravar o banco $onError"));
    }
    addMsg()*/;
  }



  @override
  Widget build(BuildContext context) {
    inicializarFirebase();
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar (
        currentIndex: 4,
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
        title: Text("Chat"),

        actions:[
          IconButton(onPressed:() {
            _novaTela(context, Emergencia());
          },
              icon: Icon(
                  color:Colors.red,
                  Icons.phone
              ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(messages[index]),
                );
              },
            ),
          ),
          Divider(),
          ListTile(
            leading: IconButton(
              icon: Icon(Icons.send,
              color: Colors.orange),
              onPressed: (){_sendMessage(context);},
            ),
            title: TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Digite sua mensagem...',
              ),
            ),
          ),

    Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
        ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
    ),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Feed();
            }),);  },

          child: Text(
                  "Gravar",
      style: TextStyle(
    color: Colors.white,
    fontSize: 25,
    ),
    ),
    ),
    SizedBox(width: 20),

    ElevatedButton(
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blueAccent,

    ),
    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
    return Feed();
    }),);  },

    child: Text(
    "Exibir",
    style: TextStyle(
    color: Colors.white,
    fontSize: 25,
    ),
    ),
    ),
    ],
    ),

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
