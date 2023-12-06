import 'package:flutter/material.dart';
class Textos extends StatelessWidget {
  String meuTexto;
  //Construtor
  Textos(this.meuTexto);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.meuTexto,
      style: TextStyle(
          color :Colors.blue,
          backgroundColor: Colors.white,
          fontSize: 50
      ),
    );
  }
}
