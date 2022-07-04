import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../businessObject/BMI.dart';

class DatabaseHandler {
  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(await getDatabasesPath(), 'bmi.db'),
      onCreate: (database, version) async {
        return database.execute(
            "CREATE TABLE BMI(id INTEGER PRIMARY KEY AUTOINCREMENT, bmi REAL, userName TEXT)");
      },
      version: 1,
    );
  }

  Future<int> insertBMI(BMI bmi) async {
    final Database db = await initializeDB();
    return await db.insert('bmi', bmi.toMap());
  }

  Future<List<BMI>> getAllBMI() async {
    final Database db = await initializeDB();
    List<Map<String, dynamic>> result = await db.query('bmi');
    return result.map((e) => BMI.fromMap(e)).toList();
  }

  Future<void> deleteBMI(int id) async {
    final Database db = await initializeDB();
    db.delete('bmi', where: 'id= ?', whereArgs: [id]);
  }

  Future<void> updateUsingHelper(BMI bmi) async {
    final Database db = await initializeDB();
    await db.update('bmi', bmi.toMap(), where: 'id= ?', whereArgs: [bmi.id]);
  }
}
