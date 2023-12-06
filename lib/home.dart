//import 'package:fiquebem/button.dart';
//import 'dart:html';

import 'package:fiquebem/imagens.dart';
import 'package:fiquebem/input.dart';
//import 'package:fiquebem/teste.dart';
import 'package:fiquebem/textos.dart';
import 'package:fiquebem/widgets/textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'feed.dart';
//import 'dart:io';




class Home  extends StatelessWidget {

  late FirebaseAuth _auth;
  final _email = TextEditingController();
  final _password = TextEditingController();
  late BuildContext ctx ;

  @override
  Widget build(BuildContext context) {
    _initFirebase();
    ctx = context;
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
                SizedBox(
                  width: 100,
                 height: 100,
                  child: Image.asset('images/logo.jpg')),

                SizedBox(
                  height: 35,
                ),


            /*  TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Login",
                  labelStyle: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.normal,
                    fontSize: 25,
                  )
                ),
                style: TextStyle(
                  fontSize: 25,
                ),


              ),*/



                SizedBox(
                  height: 25,
                ),

              LoginInput(controller: _email),
                SizedBox(
                  height: 20,
                ),
                SenhaInput(controller: _password),

                SizedBox(
                  height: 30,
                ),




              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,

                  ),
                  onPressed: _authenticate,
                  /*onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Feed();
                  }),);  },*/
                  child: Text(
                    "LOGAR",
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
  Future <void> _initFirebase() async{
    await Firebase.initializeApp();
    _auth = FirebaseAuth.instance;
  }

  void _novaTela(BuildContext context, page) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return page;
    }
    ));
  }

  Future <void> _authenticate() async {

    try{
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: _email.text.toString(),
          password: _password.text.toString()
      );
      Navigator.push(ctx, MaterialPageRoute(builder: (context) {
      return Feed();
        }),);
    }
    catch(e){
      print("Usuário não autenticado");
    }



  }


  Future <void> _createUser() async {
    //Insira o código para criação do usuario
    try{
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
          email: _email.text.toString(),
          password: _password.text.toString());
      print("Usuário criado");
    } catch(e){
      print("Error $e");
    }
  }


}
