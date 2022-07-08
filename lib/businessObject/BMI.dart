final String tableBMI = "bmi";

class BMIFields {
  static final List<String> values = [id, user_id, bmiScore];

  static final String id = "_id";
  static final String user_id = "user_id";
  static final String bmiScore = "bmi";
}

class BMI {
  final int? id;
  final int user_id;
  final double bmiScore;

  const BMI({
    required this.id,
    required this.user_id,
    required this.bmiScore,
  });

  BMI copy({int? id, int? user_id, double? bmi}) => BMI(
      id: id ?? this.id,
      user_id: user_id ?? this.user_id,
      bmiScore: bmiScore);

  static BMI fromJson(Map<String, Object?> json) => BMI(
      id: json[BMIFields.id] as int,
      user_id: json[BMIFields.user_id] as int,
      bmiScore: json[BMIFields.bmiScore] as double);

  Map<String, Object?> toJson() => {
        BMIFields.id: id,
        BMIFields.user_id: user_id,
        BMIFields.bmiScore: bmiScore
      };

  Map<String, dynamic> toMap() {
    return {'id': id, 'user_id': user_id, 'bmiScore': bmiScore};
  }

  @override
  String toString() {
    return 'BMI{id: $id, bmiScore: $bmiScore}';
  }

  factory BMI.fromMap(Map<String, dynamic> json) {
    return BMI(
        id: json['id'], user_id: json['user_id'], bmiScore: json['bmiScore']);
  }
}
