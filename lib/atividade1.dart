//import 'package:fiquebem/button.dart';
//import 'dart:html';

import 'package:fiquebem/exercicio.dart';
import 'package:fiquebem/imagens.dart';
import 'package:fiquebem/input.dart';
//import 'package:fiquebem/teste.dart';
import 'package:fiquebem/textos.dart';
import 'package:flutter/material.dart';
import '../feed.dart';
//import 'dart:io';




class Atividade1  extends StatelessWidget {
  const Atividade1 ({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    var _texto;
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: (TextStyle(
          color: Colors.white,

        )
        ),
        backgroundColor: Colors.blueAccent,
        title: Text("Fique Bem"),
        actions: [
/*              onPressed: () {
                _novaTela(context, Feed());
              },
              icon: Icon(
                color:Colors.white,
                  Icons.add
              )
          )*/

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
            /*SizedBox(
                width: 100,
                height: 100,
                child: Image.asset('logo.png'))*/

            SizedBox(
              height: 35,
            ),

            Text(
              "EXERCÍCIO 1 ",
              style: TextStyle(
                fontSize: 30,
                color: Colors.blueAccent,

              ) ,


            ),

            SizedBox(
              height: 35,
            ),

            Column(

              children: <Widget>[
                Text(
                  "Desevolva o hábito de reservar um tempo para si e desenvolver o que mais gosta",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      backgroundColor: Colors.orange,

                  ),
                ),

              ]





            ),

            SizedBox(
              height: 100,
            ),



            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,

              ),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Exercicio();
              }),);  },
              child: Text(
                "EXERCÍCIOS",
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
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return page;
    }
    ));
  }


}


