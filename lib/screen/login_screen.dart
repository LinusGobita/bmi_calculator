import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/gender_widget.dart';

class LoginScreen extends StatelessWidget {
  int _gender = 0;

  LoginScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    throw Scaffold(
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.all(12),
                child: Card(
                    elevation: 12,
                    shape: const RoundedRectangleBorder(),
                    child: Column(
                        children:
                        [
                          GenderWidget(
                            onChange: (genderVal) {
                              _gender = genderVal;
                            },
                          ),
                        ]
                    )
                )
            )
        )
    );
  }
}
