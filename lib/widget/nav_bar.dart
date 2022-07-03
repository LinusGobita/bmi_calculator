import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bmi/screen/bmi_history_screen.dart';
import 'package:flutter_bmi/screen/bmi_rating_screen.dart';
import 'package:flutter_bmi/widget/profil_widget.dart';

import '../screen/edit_profile_screen.dart';
import '../screen/login_screen.dart';
import '../screen/profile_screen.dart';
import '../util/user_preferences.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final user = UserPreferences().user;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(user.name),
            accountEmail: Text(user.email),
            currentAccountPicture: CircleAvatar(
              child: ProfileWidget(
                imagePath: user.imagePath,
                isEdit: true,
                onClicked: () {
                  Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => EditProfilePage()),
                  );
                },
              ),
            ),
          ),
          ListTile(
              leading: Icon(Icons.new_label),
              title: Text("Show User Data"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              }),
          ListTile(
              leading: Icon(Icons.new_label),
              title: Text("Edit Profile Page"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EditProfilePage()));
              }),
          ListTile(
              leading: Icon(Icons.health_and_safety),
              title: Text("Gewchitsverlauf"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BMIHistoryScreen()));
              }),
          ListTile(
              leading: Icon(Icons.list),
              title: Text("Raiting"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BMIRatingScreen()));
              }),
          Divider(),
          ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Exit"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              })
        ],
      ),
    );
  }
}
