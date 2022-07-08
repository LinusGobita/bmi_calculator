import 'package:flutter_bmi/businessObject/BMI.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../businessObject/User.dart';

class DatabaseHandler {
  static final DatabaseHandler instance = DatabaseHandler._init();
  static Database? _database;

  DatabaseHandler._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('app.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final textType = 'TEXT NOT NULL';
    final bmiType = 'Double NOT NULL';
    //final boolType = 'BOOLEAN NOT NULL';
    //final integerType = 'INTEGER NOT NULL';
    await db.execute('''
CREATE TABLE [IF NOT EXISTS] $tableUser ( 
  ${UserFields.id} $idType, 
  ${UserFields.imagePath} $textType,
  ${UserFields.name} $textType,
  ${UserFields.email} $textType,
  ${UserFields.about} $textType
  )''');

    await db.execute('''
CREATE TABLE [IF NOT EXISTS] $tableBMI (
  ${BMIFields.id} $idType,
  ${BMIFields.user_id} $idType,
  ${BMIFields.bmiScore} $bmiType
  )
''');
  }

//  ${UserFields.isDarkMode} $boolType

  Future<BMI> createBMI(BMI bmi) async {
    final db = await instance.database;
    final id = await db.insert(tableBMI, bmi.toJson());
    return bmi.copy(id: id);
  }

  Future<List<BMI>> readAllBMI() async {
    final db = await instance.database;
    // final result =
    //     await db.rawQuery('SELECT * FROM $tableNotes ORDER BY $orderBy');
    final result = await db.query(tableBMI);
    return result.map((json) => BMI.fromJson(json)).toList();
  }

  Future<User> createUser(User user) async {
    final db = await instance.database;

    // final json = note.toJson();
    // final columns =
    //     '${NoteFields.title}, ${NoteFields.description}, ${NoteFields.time}';
    // final values =
    //     '${json[NoteFields.title]}, ${json[NoteFields.description]}, ${json[NoteFields.time]}';
    // final id = await db
    //     .rawInsert('INSERT INTO table_name ($columns) VALUES ($values)');

    final id = await db.insert(tableUser, user.toJson());

    return user.copy(id: id);
  }

  Future<User> readUser(int id) async {
    final db = await instance.database;

    final maps = await db.query(
      tableUser,
      columns: UserFields.values,
      where: '${UserFields.id} = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return User.fromJson(maps.first);
    } else {
      throw Exception('ID $id not found');
    }
  }

  Future<List<User>> readAllUsers() async {
    final db = await instance.database;

    final orderBy = '${UserFields.name} ASC';
    // final result =
    //     await db.rawQuery('SELECT * FROM $tableNotes ORDER BY $orderBy');

    final result = await db.query(tableUser, orderBy: orderBy);

    return result.map((json) => User.fromJson(json)).toList();
  }

  Future<int> update(User user) async {
    final db = await instance.database;

    return db.update(
      tableUser,
      user.toJson(),
      where: '${UserFields.id} = ?',
      whereArgs: [user.id],
    );
  }

  Future<int> delete(int id) async {
    final db = await instance.database;

    return await db.delete(
      tableUser,
      where: '${UserFields.id} = ?',
      whereArgs: [id],
    );
  }

  Future close() async {
    final db = await instance.database;

    db.close();
  }
}
