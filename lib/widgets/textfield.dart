import 'package:flutter/material.dart';
class LoginInput extends StatelessWidget {

  TextEditingController controller;

  LoginInput({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.text,
      obscureText: false,
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
    );
  }
}

class SenhaInput extends StatelessWidget {

  TextEditingController controller;

  SenhaInput({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: InputDecoration(
          labelText: "Senha",
          labelStyle: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.normal,
            fontSize: 25,
          )
      ),
      style: TextStyle(
        fontSize: 25,
      ),
    );
  }
}

class Diario extends StatelessWidget {

  TextEditingController controller;

  Diario({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.text,
      obscureText: false,
      decoration: InputDecoration(
          labelText: "Diario do Dia",
          labelStyle: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.normal,
            fontSize: 25,
          )
      ),
      style: TextStyle(
        fontSize: 25,
      ),
    );
  }
}
