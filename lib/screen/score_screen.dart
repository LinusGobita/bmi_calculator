import 'package:flutter/material.dart';
import 'package:flutter_bmi/util/DatabaseHandler.dart';
import 'package:pretty_gauge/pretty_gauge.dart';
import 'package:share_plus/share_plus.dart';

import '../businessObject/BMI.dart';
import '../generated/l10n.dart';
import '../util/Rating.dart';

class ScoreScreen extends StatelessWidget {
  final double bmiScore;
  final int age;
  String? bmiStatus;
  String? bmiInterpretation;
  Color? bmiStatusColor;

  ScoreScreen({Key? key, required this.bmiScore, required this.age})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    setBmiInterpretation(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.of(context).bmi_score),
      ),
      body: Container(
          padding: const EdgeInsets.all(12),
          child: Card(
              elevation: 12,
              shape: const RoundedRectangleBorder(),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      //"Your Score",
                      S.of(context).your_score,
                      style: TextStyle(fontSize: 30, color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    PrettyGauge(
                      gaugeSize: 300,
                      minValue: 0,
                      maxValue: 40,
                      segments: [
                        GaugeSegment('UnderWeight', 18.5, Colors.red),
                        GaugeSegment('Normal', 6.4, Colors.green),
                        GaugeSegment('OverWeight', 5, Colors.orange),
                        GaugeSegment('Obese', 10.1, Colors.pink),
                      ],
                      valueWidget: Text(
                        bmiScore.toStringAsFixed(1),
                        style: const TextStyle(fontSize: 40),
                      ),
                      currentValue: bmiScore.toDouble(),
                      needleColor: Colors.blue,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      bmiStatus!,
                      style: TextStyle(fontSize: 20, color: bmiStatusColor!),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      bmiInterpretation!,
                      style: const TextStyle(fontSize: 15),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            //child: const Text("Re-calculate")),
                        child: Text(S.of(context).recalculate)),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Share.share(
                                  "Your BMI is ${bmiScore.toStringAsFixed(1)} at age $age");
                            },

                          child: Text(S.of(context).share),
                        )
                      ],
                    )
                  ]))),
    );
  }

  void setBmiInterpretation(context) {
    bmiInterpretation = Rating.rate(bmiScore, context)[0];
    bmiStatus = Rating.rate(bmiScore, context)[1];
    bmiStatusColor = Rating.rate(bmiScore, context)[2];
  }

}
