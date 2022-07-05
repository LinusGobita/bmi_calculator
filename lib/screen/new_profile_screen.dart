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
  User user = UserPreferences().newUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "Add New User"),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          children: [
            ProfileWidget(
                imagePath: user.imagePath,
                isEdit: true,
                onClicked: () async {}),
            const SizedBox(
              height: 24,
            ),
            TextFieldWidget(
              label: "Full Name",
              text: user.name,
              onChange: (name) {},
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldWidget(
              label: "E-Mail",
              text: user.email,
              onChange: (name) {},
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldWidget(
              label: "About",
              text: user.about,
              maxLines: 5,
              onChange: (name) {},
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: TextButton(
                onPressed: () {
                  DatabaseHandler.instance.create(user);
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
