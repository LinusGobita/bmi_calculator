final String tableUser = "user";
final String tableBMI = "bmi";

class UserFields {
  static final List<String> values = [
    id, imagePath, name, email, about
  ];

  static final String id = "_id";
  static final String imagePath = "imagePath";
  static final String name = "name";
  static final String email = "email";
  static final String about = "about";
  //static final String isDarkMode = "isDarkMode";

}

class User {
  final  int? id;
  final String imagePath;
  final String name;
  final String email;
  final String about;
  //final bool isDarkMode;

  const User({
    required this.id,
    required this.imagePath,
    required this.name,
    required this.email,
    required this.about,
    //required this.isDarkMode
  });

  User copy({
    int? id,
    String? imagePath,
    String? name,
    String? email,
    String? about,
    //ool? isDarkMode

  }) =>
      User(
          id: id ?? this.id,
          imagePath: imagePath ?? this.imagePath,
          name: name ?? this.name,
          email: email ?? this.email,
          about: about ?? this.about,
          //isDarkMode: isDarkMode ?? false
      );

  static User fromJson(Map<String, Object?> json) =>
      User(
          id: json[UserFields.id] as int?,
          imagePath: json[UserFields.imagePath] as String,
          name: json[UserFields.name] as String,
          email: json[UserFields.email] as String,
          about: json[UserFields.name] as String
          //isDarkMode: json[UserFields.isDarkMode] as bool
      );
  Map<String, Object?> toJson() => {
    UserFields.id: id,
    UserFields.imagePath: imagePath,
    UserFields.name: name,
    UserFields.email: email,
    UserFields.about: about,
    //UserFields.isDarkMode: isDarkMode
  };

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'imagePath': imagePath,
      "email": email,
      "about": about
    };
  }

  factory User.fromMap(Map<String, dynamic> json) {
    return User(
        id: json["id"],
        name: json['name'],
        imagePath: json['imagePath'],
        email: json['email'],
        about: json['about'],
        //isDarkMode: false
        );
  }
}

class NewUser{
  int? id;
  String imagePath = "assets/image/man.jpeg";
  String name = "Your Name";
  String email = "You Email";
  String about = "Something about you!";

}