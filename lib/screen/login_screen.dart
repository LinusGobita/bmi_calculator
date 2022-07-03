import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {

  const LoginScreen({Key? key,}) : super(key: key)

  @override
  Future<Widget> build(BuildContext context) async {
    throw Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Select your User")
    ),
      body: Container(
        padding: EdgeInsets.all(12),
      ),
    );
  }
}
