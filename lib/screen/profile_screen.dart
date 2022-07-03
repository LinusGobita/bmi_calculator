import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bmi/businessObject/User.dart';
import 'package:flutter_bmi/util/user_preferences.dart';
import 'package:flutter_bmi/widget/appbar_widget.dart';

import '../widget/profil_widget.dart';

class ProfilePage extends StatefulWidget {
 @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences().user;
    return Scaffold(
      appBar: buildAppBar(context, "User Preferences"),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            isEdit: true,
            onClicked: () async {},
          ),
          const SizedBox(height: 20),
          buildName(user),
        ],

      )
    );
  }

  Widget buildName(User user) => Column(
    children: [
      Text(
        user.name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
      const SizedBox(height: 4,),
      Text(
        user.email,
        style: TextStyle(color: Colors.grey),
      )
    ],
  );
}
