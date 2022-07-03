import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bmi/widget/appbar_widget.dart';

class BMIRatingScreen extends StatelessWidget {
  const BMIRatingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(context, "BMI Raiting"));
  }
}
