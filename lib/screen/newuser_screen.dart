import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bmi/widget/userProfil_widget.dart';

class NewUserScreen extends StatelessWidget {
  const NewUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Add New User"),
        ),
        body: Column(
          children: [
            UserProfilBody()
          ],
        ));
  }
}
