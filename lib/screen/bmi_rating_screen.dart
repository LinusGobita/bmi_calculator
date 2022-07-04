import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bmi/widget/appbar_widget.dart';

import '../businessObject/Rating.dart';

class BMIRatingScreen extends StatelessWidget {
  const BMIRatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double _num = 100;
    List<Rating> allRatingList = Rating.getAllRating(context);

    return Scaffold(
      appBar: buildAppBar(context, "BMI Raiting"),
      body: SizedBox(
          child: ListView.builder(
              itemBuilder: (listViewContext, index) {
                return Container(
                    color: allRatingList[index].bmiStatusColor,
                    height: _num,
                    width: 50,
                    child:
                        ListTile(
                            leading: Text(allRatingList[index].status),
                          trailing: Text(allRatingList[index].message),
                        ));
              },
              itemCount: allRatingList.length)),
    );
  }
}
