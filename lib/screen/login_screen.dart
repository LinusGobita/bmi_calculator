import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bmi/provider/provider.dart';
import 'package:flutter_bmi/screen/new_profile_screen.dart';

import '../widget/appbar_widget.dart';
import '../widget/gender_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context, "Loging"),
        body: Column(
          children: [
            Container(
              //Lets create widget for gender selection
              child: GenderWidget(
                onChange: (genderVal) {},
              ),
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: TextButton(
                onPressed: () {},
                child: Text("logging"),
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: MyThemes.primaryColor
                ),
              ),
            ),
            InkWell(
              child: new Text("Create new User"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewUserScreen()));
              }
            ),
          ],
        ));
  }
}
