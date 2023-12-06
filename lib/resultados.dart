//import 'package:fiquebem/button.dart';
//import 'dart:html';

import 'package:fiquebem/emergencia.dart';
import 'package:fiquebem/imagens.dart';
import 'package:fiquebem/input.dart';
//import 'package:fiquebem/teste.dart';
import 'package:fiquebem/textos.dart';
import 'package:flutter/material.dart';
import '../feed.dart';
//import 'dart:io';




class Resultados extends StatelessWidget {
  const Resultados({Key? key}) : super(key: key);



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
        title: Text("Resultados"),
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
                width: 20,
                height: 20,

                child: Image.asset('logo.png')),*/

            SizedBox(
              height: 35,
            ),


            Text(
                "RESULTADOS DA AVALIAÇÃO ",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blueAccent,
                )

            ),

            SizedBox(
              height: 25,
            ),


            Text(
              "Ansiendade: 70%",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueAccent,
              ),
            ),

            SizedBox(
              height: 15,
            ),


            Text(
              "Sentimentos negativos: 70%",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueAccent,
              ),
            ),

            SizedBox(
              height: 15,
            ),

            Text(
              "Irritação: 80%",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueAccent,
              ),
            ),

            SizedBox(
              height: 50,
            ),


            Text("VOCÊ ESTÀ EM RISCO! PROCURE AJUDA IMEDIATAMENTE! ",
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.red,

              ),
            ),

            SizedBox(
              height: 10,
            ),

            Text("LIGUE ABAIXO PARA A CVV!",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 30,
                color: Colors.red,

              ),
            ),

            SizedBox(
              height: 30,
            ),

            ElevatedButton(
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Emergencia();
              }),);  },
              child:
              Icon(
              color:Colors.red,
              Icons.phone,
                size: 80,

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