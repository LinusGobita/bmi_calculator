//import 'package:flutter_bmi/util/Database.dart';
import 'package:flutter_bmi/util/DatabaseHandler.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class BMI {
  final int id;
  final double bmiScore;

  String userName;

  BMI({
    required this.id,
    required this.userName,
    required this.bmiScore,
  });

  Map<String, dynamic> toMap() {
    return {'id': id, 'bmiScore': bmiScore, 'userName': userName};
  }

  @override
  String toString() {
    return 'BMI{id: $id, bmiScore: $bmiScore, userName: $userName}';
  }

  factory BMI.fromMap(Map<String, dynamic> json) {
    return BMI(
      id: json['id'],
      bmiScore: json['bmiScore'],
        userName: json['userName']
    );
  }

}
