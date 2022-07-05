import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bmi/provider/provider.dart';
import 'package:flutter_bmi/screen/new_profile_screen.dart';
import 'package:flutter_bmi/database/database_handler.dart';

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
    int _gender = 0;
    return Scaffold(
        appBar: buildAppBar(context, "Login"),
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      child: Card(
                        elevation: 12,
                        shape: const RoundedRectangleBorder(),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 100,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      GenderWidget(user: users[0]),
                                      const SizedBox(width: 20,),
                                      GenderWidget(user: users[1]),
                                    ],
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  /*
                  ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (listViewContext, index) {
                        return GenderWidget(
                            user: users[index],
                            //onChange: (genderVal) {}
                        );
                      },
                      itemCount: users.length),
                   */

                  SizedBox(
                    height: 50,
                    width: 200,
                    child: TextButton(
                      onPressed: () {},
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
                      }),
                ],
              ));
  }
}
