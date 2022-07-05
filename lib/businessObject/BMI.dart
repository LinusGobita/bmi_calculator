//import 'package:flutter_bmi/util/Database.dart';
import 'package:flutter_bmi/database/database_handler.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class BMI {
  final int id;
  final double bmiScore;

  BMI({
    required this.id,
    required this.bmiScore,
  });

  Map<String, dynamic> toMap() {
    return {'id': id, 'bmiScore': bmiScore};
  }

  @override
  String toString() {
    return 'BMI{id: $id, bmiScore: $bmiScore}';
  }

  factory BMI.fromMap(Map<String, dynamic> json) {
    return BMI(
      id: json['id'],
      bmiScore: json['bmiScore']
    );
  }

}
