import 'package:sqflite/sqlite_api.dart';

class MySqliteHelper {
  Database _database;

  Future<Database> get database async{
    if(_database == null){
      _database = await initializeDatabase();
      return _database;
    }
  }

  Future<Database> initializeDatabase (){}


}