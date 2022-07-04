import '../businessObject/User.dart';

class UserPreferences {

  static const myUser = User(
    imagePath: "assets/image/man.jpeg",
    name: "Linus",
    email: "linus@gobita.ch",
    about: "Ich bin nur uf dere App, wel sie spass macht zum programmiere, und nöd zum min blöde bmi z mässe!",
    isDarkMode: false
  );

  static const emptyUser = User(
    imagePath: "assets/image/man.jpeg",
    name: "Your Name",
    email: "Your Email",
    about: "Tell me something about you",
    isDarkMode: false
  );

  User get user {
    return myUser;
  }
    User get newUser {
    return emptyUser;
  }

}
