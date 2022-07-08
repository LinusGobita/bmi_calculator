import 'package:flutter/material.dart';
import 'package:flutter_bmi/database/database_handler.dart';

import '../businessObject/User.dart';
import '../provider/provider.dart';
import '../util/user_preferences.dart';
import '../widget/appbar_widget.dart';
import '../widget/profil_widget.dart';
import '../widget/textfiel_widget.dart';
import 'login_screen.dart';

class NewUserScreen extends StatefulWidget {
  const NewUserScreen({Key? key}) : super(key: key);

  @override
  State<NewUserScreen> createState() => _NewUserScreenState();
}

class _NewUserScreenState extends State<NewUserScreen> {
  NewUser newUser = NewUser();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "Add New User"),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          children: [
            ProfileWidget(
                imagePath: newUser.imagePath,
                isEdit: true,
                onClicked: () async {}),
            const SizedBox(
              height: 24,
            ),
            TextFieldWidget(
              label: "Full Name",
              text: newUser.name,
              onChange: (name) {
                newUser.name = name;
              },
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldWidget(
              label: "E-Mail",
              text: newUser.email,
              onChange: (name) {
                newUser.email = name;
              },
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldWidget(
              label: "About",
              text: newUser.about,
              maxLines: 5,
              onChange: (name) {
                newUser.about = name;
              },
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: TextButton(
                onPressed: () {
                  User user = User(
                      id: null,
                      imagePath: newUser.imagePath,
                      name: newUser.name,
                      email: newUser.email,
                      about: newUser.about);
                  DatabaseHandler.instance.createUser(user);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                child: Text("Save User"),
                style: TextButton.styleFrom(
                    primary: Colors.black,
                    backgroundColor: MyThemes.primaryColor),
              ),
            ),
          ]),
    );
  }
}
