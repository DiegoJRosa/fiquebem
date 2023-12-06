import 'package:fiquebem/control/control.dart';
import 'package:fiquebem/exercicio.dart';
import 'package:fiquebem/feed.dart';
import 'package:flutter/material.dart';

import 'avaliacao.dart';
import 'classediario.dart';
class TelaDiario extends StatefulWidget {
  @override
  _TelaDiarioState createState() => _TelaDiarioState();

}

class _TelaDiarioState extends State<TelaDiario> {
  @override
  final _dia01 = TextEditingController();
  final _dia02 = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar (
        currentIndex: 3,
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
        title: Text("Diário"),
        actions: [
          IconButton(onPressed:() {
            _novaTela(context, Exercicio());
          },
              icon: Icon(
                  color:Colors.white,
                  Icons.open_in_full_outlined
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
            Text("DIARIO DE SENTIMENTOS",
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.normal,
                fontSize: 45,
              ),

            ),


            SizedBox(
              height: 20,
            ),

            TextFormField(
              maxLines: 2,
              maxLength: 120,
              keyboardType: TextInputType.text, controller: _dia01,

              decoration: InputDecoration(
                  labelText: "Diario - Dia 01",
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
              height: 20,
            ),

            TextFormField(
              maxLines: 2,
              maxLength: 120,
              keyboardType: TextInputType.text, controller: _dia02,
              decoration: InputDecoration(
                  labelText: "Diario - Dia 02",
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
              height: 29,
            ),


            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,

              ),
              onPressed: _registrar, child:Text(
              "GRAVAR",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
              ),
      ],
        ),
      
    ),
    );
    
    
}


  void _novaTela(BuildContext context, page) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
      return page;
    }));
  }

  void _registrar() {
  var control = new ControlDiario();
  var di = new Diario();
    di.mensagem = _dia01.text.toString();
    di.dt  = DateTime.now();

  control.insertDatabase(di);
  }
}
