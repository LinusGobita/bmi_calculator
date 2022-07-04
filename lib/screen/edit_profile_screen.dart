import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bmi/util/user_preferences.dart';
import 'package:flutter_bmi/widget/appbar_widget.dart';
import 'package:flutter_bmi/widget/profil_widget.dart';

import '../businessObject/User.dart';
import '../widget/textfiel_widget.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);


  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {

  User user = UserPreferences().user;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: buildAppBar(context, "Edit Profile"),
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
            ]),
      );
}
