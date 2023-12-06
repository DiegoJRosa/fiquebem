import 'package:fiquebem/chat.dart';
import 'package:fiquebem/resultados.dart';
import 'package:flutter/material.dart';
class Avaliacao extends StatelessWidget {
  const Avaliacao({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar (
        currentIndex: 1,
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
        title: Text("Avaliação da sua Saúde Mental"),
        actions: [
          IconButton(onPressed:() {
            _novaTela(context, ChatScreen());
          },
              icon: Icon(
                  color:Colors.white,
                  Icons.mark_unread_chat_alt
              ))
        ],
      ),
      body: Container(
        padding:EdgeInsets.only(
          top:60,
          left:40,
          right:40,
        ),
        child:ListView(
          children: <Widget>[
            Text("AVALIAÇÃO",
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.normal,
                fontSize: 45,
              ),

            ),


            SizedBox(
              height: 10,
            ),

            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Como você está se sentindo?",
                  labelStyle: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.normal,
                    fontSize: 25,
                  )
              ),
              style: TextStyle(
                fontSize: 25,
              ),


            ),

            SizedBox(
              height: 10,
            ),

            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "O que te levou a sentir isso?",
                  labelStyle: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.normal,
                    fontSize: 25,

                  )
              ),
              style: TextStyle(
                fontSize: 25,
              ),


            ),
            SizedBox(
              height: 50,
            ),

            Text("Como você está se sentindo?",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.normal,
                    fontSize: 35,
                  )
              ),
            SizedBox(
              height: 50,
            ),
          Row(
            children:<Widget> [
              Icon(Icons.insert_emoticon,
                  size: 60,
                  color: Colors.green),
              SizedBox(width: 70),
              Icon(Icons.tag_faces_rounded,
                  size: 60,
                  color: Colors.yellow),

              SizedBox(width: 70),
              Icon(Icons.outlet,
                  size: 60,
                  color: Colors.red),

            ],


          ),

            SizedBox(height: 100),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,

              ),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Avaliacao();
              }),);  },
              child: Text(
                "GRAVAR",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),

            SizedBox(width: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,

              ),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Resultados();
              }),);  },
              child: Text(
                "RESULTADOS",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),



            ],
        ),



       ],
    ),


            ),
    );







           /* ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,

              ),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Avaliacao();
              }),);  },
              child: Text(
                "GRAVAR",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),

        );*/



  }
}
void _novaTela(BuildContext context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
    return page;
  }));
}
