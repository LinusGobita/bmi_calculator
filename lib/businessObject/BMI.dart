//import 'package:flutter_bmi/util/Database.dart';
import 'package:flutter_bmi/util/DatabaseHandler.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class BMI {
  //final int id;
  final double bmi;
  String userName;

  BMI({
    //required this.id,
    required this.userName,
    required this.bmi,
  });

  Map<String, dynamic> toMap() {
    //return {'id': id, 'bmi': bmi, 'userName': userName};
    return {'bmi': bmi, 'userName': userName};
  }

  @override
  String toString() {
    //return 'BMI{id: $id, bmi: $bmi, userName: $userName}';
    return 'BMI{bmi: $bmi, userName: $userName}';
  }

  factory BMI.fromMap(Map<String, dynamic> json) {
    //return BMI(id: json['id'], bmi: json['bmi'], userName: json['userName']);
    return BMI(bmi: json['bmi'], userName: json['userName']);
  }
}
