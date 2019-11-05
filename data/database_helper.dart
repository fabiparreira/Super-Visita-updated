import 'dart:async';
import 'dart:io' as io;

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:super_visita/models/supervisor.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = new DatabaseHelper.internal();

  factory DatabaseHelper() => _instance;

  static Database _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  DatabaseHelper.internal();

  initDb() async {
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, "main.db");
    var ourDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return ourDb;
  }

  void _onCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE Supervisor("
            "id INTEGER PRIMARY KEY,"
            "emailSuper TEXT,"
            "senhaSuper TEXT)");

    print("Table is created");
  }

  // insert
  Future<int> saveUser(Supervisor supervisor) async {
    var dbClient = await db;
    int res = await dbClient.insert("Supervisor", supervisor.toMap());
    return res;
  }

  // delete
  Future<int> deleteUser(Supervisor supervisor) async {
    var dbClient = await db;
    int res = await dbClient.delete("Supervisor");
    return res;
  }
}
