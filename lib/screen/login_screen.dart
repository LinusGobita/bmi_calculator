import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bmi/provider/provider.dart';
import 'package:flutter_bmi/screen/home_screen.dart';
import 'package:flutter_bmi/screen/new_profile_screen.dart';
import 'package:flutter_bmi/database/database_handler.dart';
import 'package:flutter_bmi/util/user_preferences.dart';

import '../businessObject/User.dart';
import '../widget/appbar_widget.dart';
import '../widget/gender_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late List<User> users;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    refreshUsers();
  }

  void dispose() {
    //DatabaseHandler.instance.close();
    //super.dispose();
  }

  Future refreshUsers() async {
    setState(() => isLoading = true);

    this.users = await DatabaseHandler.instance.readAllUsers();
    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    UserPreferences select = UserPreferences();
    int _userId = 0;
    return Scaffold(
        appBar: buildAppBar(context, "Login"),
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : Column(children: [
                SingleChildScrollView(
                    child: Container(
                  padding: const EdgeInsets.all(12),
                  child: Card(
                    elevation: 12,
                    shape: const RoundedRectangleBorder(),
                    child: Column(
                      children: [
                        UserWidgets(
                            users: users,
                            onChange: (userId) {
                              _userId = userId;
                            }),
                        SizedBox(
                          height: 50,
                          width: 200,
                          child: TextButton(
                            onPressed: () {
                              //select.selectUser(users[_userId]);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()));
                            },
                            child: Text("logging"),
                            style: TextButton.styleFrom(
                                primary: Colors.black,
                                backgroundColor: MyThemes.primaryColor),
                          ),
                        ),
                        InkWell(
                          child: new Text("Create new User"),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NewUserScreen()));
                          },
                        ),
                        SizedBox(
                          height: 50,
                          width: 200,
                          child: TextButton(
                            onPressed: () {
                              DatabaseHandler.instance.delete(_userId);
                              refreshUsers();
                            },
                            child: Text("Delet Selectet User"),
                            style: TextButton.styleFrom(
                                primary: Colors.black,
                                backgroundColor: MyThemes.primaryColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
              ]));
  }
}
