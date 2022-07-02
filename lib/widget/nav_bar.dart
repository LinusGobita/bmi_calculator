import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../screen/login_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Linus"),
            accountEmail: Text("Linus@Gobita.ch"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                  child: Image.asset(
                "assets/image/woman.jpg",
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              )),
            ),
          ),
          ListTile(
            leading: Icon(Icons.health_and_safety),
            title: Text("Gewchitsverlauf"),
            onTap: () => print("Gewichtsverlauf"),
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text("Raiting"),
            onTap: () => print("Gewichtsverlauf"),
          ),
          ListTile(
            leading: Icon(Icons.new_label),
            title: Text("Add New User"),
            onTap: () => print("Add User"),
          ),
          Divider(),
          ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Exit"),
              onTap: () => PageTransition(
                  child: LoginScreen(),
                  type: PageTransitionType.fade)),
        ],
      ),
    );
  }
}
