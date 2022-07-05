import '../businessObject/User.dart';

class UserPreferences {

  static const myUser = User(
    id: 101,
    imagePath: "assets/image/man.jpeg",
    name: "Linus",
    email: "linus@gobita.ch",
    about: "Ich bin nur uf dere App, wel sie spass macht zum programmiere, und nöd zum min blöde bmi z mässe!",
    //isDarkMode: false
  );

  static const emptyUser = User(
    id: 3,
    imagePath: "assets/image/man.jpeg",
    name: "Pietro",
    email: "pietro@gobita.ch",
    about: "Schiess BMI",
    //isDarkMode: false
  );

  User get user {
    return myUser;
  }
    User get newUser {
    return emptyUser;
  }

}
