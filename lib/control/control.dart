import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import '../classediario.dart';
import '../diario.dart';
class ControlDiario{
  static final _databaseDiario = "diario.db";
  static Database? database;

  ControlDiario();

  Future startDatabase() async{
    if (database != null){
      return database;
    }
    database = await _openOrCreateDatabase();
    return database;
  }

  Future _openOrCreateDatabase() async{
    var databasesPath = await getDatabasesPath();
    String path = databasesPath + _databaseDiario;
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }
  Future _onCreate(Database db, int version) async{
    await db.execute(
      'CREATE TABLE IF NOT EXISTS DIARIO (dia DATE, diario TEXT)',

    );
  }
  Future insertDatabase(Diario di) async{
    Database db = await startDatabase();
    String sql = "";
    sql = 'INSERT INTO Diario (dia, diario) VALUES (';
    var dia = DateTime.now();
    sql = sql + "'" + di.mensagem + "', '" + dia.toString() + "')";

    try{
      print(sql);
      await db.rawInsert(sql);
      print("Diário preenchido");
    }finally{
      //await db.close();
    }
  }
}



