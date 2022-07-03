import 'package:flutter/material.dart';
import 'package:flutter_bmi/screen/score_screen.dart';
import 'package:flutter_bmi/util/Calculate.dart';
import 'package:flutter_bmi/widget/nav_bar.dart';

import '../generated/l10n.dart';
import '../widget/gender_widget.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

import '../widget/slider_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _gender = 0;
  int _height = 150;
  int _age = 30;
  int _weight = 50;
  bool _isFinished = false;
  double _bmiScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
        appBar: AppBar(
          centerTitle: true,
          title: Text(S.of(context).app_title),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Card(
              elevation: 12,
              shape: const RoundedRectangleBorder(),
              child: Column(
                children: [
                  //Lets create widget for gender selection
                  GenderWidget(
                    onChange: (genderVal) {
                      _gender = genderVal;
                    },
                  ),
                  SliderWidget(
                      onChange: (heightVal) {
                        _height = heightVal;
                      },
                      title: S.of(context).height_input,
                      min: 0,
                      initValue: 170,
                      max: 240,
                      unit: "cm"),
                  SliderWidget(
                      onChange: (ageVal) {
                        _age = ageVal;
                      },
                      title: S.of(context).age,
                      min: 0,
                      initValue: 30,
                      max: 120,
                      unit: "Years"),
                  SliderWidget(
                      onChange: (weightVal) {
                        _weight = weightVal;
                      },
                      title: S.of(context).weight_input,
                      min: 0,
                      initValue: 80,
                      max: 150,
                      unit: "Kg"),


                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 60),
                    child: SwipeableButtonView(
                      isFinished: _isFinished,
                      onFinish: () async {
                        await Navigator.push(
                            context,
                            PageTransition(
                                child: ScoreScreen(
                                  bmiScore: _bmiScore,
                                  age: _age,
                                ),
                                type: PageTransitionType.fade));

                        setState(() {
                          _isFinished = false;
                        });
                      },
                      onWaitingProcess: () {
                        //Calculate BMI here
                        //calculateBmi();
                        _bmiScore = Calculate.calculateBmi(_weight, _height);

                        Future.delayed(Duration(seconds: 1), () {
                          setState(() {
                            _isFinished = true;
                          });
                        });
                      },
                      activeColor: Colors.blue,
                      buttonWidget: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.black,
                      ),
                      buttonText: S.of(context).calculate,
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
