import 'package:fiquebem/atividade1.dart';
import 'package:fiquebem/avaliacao.dart';
import 'package:flutter/material.dart';
class Exercicio extends StatelessWidget {
  const Exercicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar (
        currentIndex: 0,
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
          color: Colors.white,
        ),
        title: Text("Exercicios Mentais"),
        actions: [
          IconButton(onPressed:() {
            _novaTela(context, Avaliacao());
          },
              icon: Icon(
                  color:Colors.white,
                  Icons.check
              ))
        ],
      ),
      body: Container(
        height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,

                    ),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Atividade1();
                    }),);  },
                    child: Text(
                      "EXERCICIO 1",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),

                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,

                    ),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Exercicio();
                    }),);  },
                    child: Text(
                      "EXERCICIO 2",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,

                    ),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Exercicio();
                    }),);  },
                    child: Text(
                      "EXERCICIO 3",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,

                    ),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Exercicio();
                    }),);  },
                    child: Text(
                      "EXERCICIO 4",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,

                    ),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Exercicio();
                    }),);  },
                    child: Text(
                      "EXERCICIO 5",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,

                    ),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Exercicio();
                    }),);  },
                    child: Text(
                      "EXERCICIO 6",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              )

            ],
          ),
      ),
    );
  }
}

void _novaTela(BuildContext context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
    return page;
  }));
}
