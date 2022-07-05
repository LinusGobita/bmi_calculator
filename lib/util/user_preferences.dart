import '../businessObject/User.dart';

class UserPreferences {

  static const myUser = User(
    id: 10,
    imagePath: "assets/image/man.jpeg",
    name: "Test",
    email: "Test@gobita.ch",
    about: "Test",
    //isDarkMode: false
  );

  static const emptyUser = User(
    id: null,
    imagePath: "assets/image/man.jpeg",
    name: "Your Name",
    email: "Your Email",
    about: "About You",
    //isDarkMode: false
  );

  User get user {
    return myUser;
  }

  User get newUser {
    return emptyUser;
  }

  void selectUser(User user) {
    //myUser = user;
    print(user.name);
  }
}
