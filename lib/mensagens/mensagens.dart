import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class Mensagens {
  String msg = "";
  DateTime dt = DateTime.now();

  Mensagens();

  Map<String, dynamic> toJson() =>
      {
        'msg': msg,
        'dt': dt
      };
  Mensagens.fromSnapshot(DocumentSnapshot snapshot):
          msg = snapshot['msg'],
          dt = snapshot['dt'].toDate();





}


