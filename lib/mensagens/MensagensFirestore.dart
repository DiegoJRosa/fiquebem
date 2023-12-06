import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../input.dart';
import '../widgets/widget_button_custom.dart';
import '../widgets/widget_text_custom.dart';

class MensagensFirestore extends StatefulWidget {
  String user;
  String friend;
  MensagensFirestore(this.user, this.friend);

  @override
  _MensagensFirestoreState createState() => _MensagensFirestoreState();
}

class _MensagensFirestoreState extends State<MensagensFirestore> {
  final _friend= TextEditingController();
  final _user = TextEditingController();
  final _msg = TextEditingController();
  final _qtdmsg = TextEditingController();
  List _resultsList = [];
  Future <void> inicializarFirebase() async{
    await Firebase.initializeApp();
    Firebase.initializeApp().whenComplete(() => print ("Conectado ao Firebase"));
  }


  @override
  Widget build(BuildContext context) {
    inicializarFirebase();
    _user.text=widget.user.toString();
    _friend.text=widget.friend.toString();
    return Scaffold(
      appBar: AppBar(
        title: Text("Mensagens"),

      ),
      body: _body(),
    );
  }
  _body(){
    return ListView(
      padding: EdgeInsets.all(9),
      children: [
        TextosCustom("Conversas com seu amigo: "+ _friend.text , 16, Colors.redAccent),
        TextosCustom(" ", 12, Colors.black),
        ContainerInsere(_msg, "","Digite a mensagem:"),
        BotoesCustom("Enviar", onPressed:() {
          _clicksend(context);
        }
        ),
        BotoesCustom("Receber", onPressed: _buscaRegistro)
      ],
    );


  }



  ContainerInsere(TextEditingController txt, String label, String rotulo)
  {
    return Container(
      color: Colors.transparent,
      margin: EdgeInsets.only(left: 3, right: 3, bottom: 0, top: 0),
      child: InputTextos(rotulo, label,controller: txt,),
      alignment: AlignmentDirectional.topStart,
    );
  }


  void _clicksend(BuildContext ctx) {

    _msg.text="";
    _qtdmsg.text="1";
  }




  void _buscaRegistro() {
  }
}