import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/appbar_widget.dart';
import '../widget/gender_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context, "Loging"),
        body: Container(
          //Lets create widget for gender selection
          child: GenderWidget(
            onChange: (genderVal) {},
          ),
        ));
  }
}
