import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/appbar_widget.dart';

class BMIHistoryScreen extends StatelessWidget {
  const BMIHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context, "Your BMI Score"),
        body: Container(
        )
    );
  }
}
