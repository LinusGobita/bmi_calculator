import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bmi/businessObject/Rating.dart';
import 'package:flutter_bmi/widget/appbar_widget.dart';

class DetaiRatingScreen extends StatelessWidget {
  final Rating rating;
  final double maxBMI;
  static const rowSpacer = TableRow(children: [
    SizedBox(
      height: 8,
    ),
    SizedBox(
      height: 8,
    )
  ]);

  const DetaiRatingScreen({Key? key, required this.rating, required this.maxBMI}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context, "Rating Detai"),
        body: Table(
          children: [
            TableRow(children: [
              Text("Status: "),
              Text(rating.status),
            ]),
            rowSpacer,
            TableRow(children: [
              Text("Message: "),
              Text(rating.message),
            ]),
            rowSpacer,
            TableRow(children: [
              Text("BMI Range min: "),
              Text(rating.bmi.toString()),
            ]),
            rowSpacer,
            TableRow(children: [
              Text("BMI Range max: "),
              Text(maxBMI.toString()),
            ]),
          ],
        ));
  }
}
