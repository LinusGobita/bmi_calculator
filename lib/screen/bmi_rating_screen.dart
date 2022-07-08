import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bmi/screen/detai_rating_screen.dart';
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
                    child: ListTile(
                      leading: Text(allRatingList[index].status),
                      trailing: Text(allRatingList[index].message),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetaiRatingScreen(
                                  rating: allRatingList[index],
                                  maxBMI:
                                      // If allRatingList[index + 1].bmi set 100.0
                                      (allRatingList[index + 1].bmi))),
                        );
                      },
                    ));
              },
              itemCount: allRatingList.length)),
    );
  }
}
