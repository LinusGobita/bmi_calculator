import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../businessObject/BMI.dart';
import '../util/DatabaseHandler.dart';

class BMIRatingScreen extends StatelessWidget {
  const BMIRatingScreen({Key? key}) : super(key: key);

/*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("BMI Rating "),
        ),
      body: Container(
        child: FutureBuilder(
          future: bmis,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var bmiList = snapshot.data as List<BMI>;
              return ListView.builder(
            itemCount: bmiList.length,
            itemBuilder: (BuildContext context, int index){
    BMI bmi = bmiList[index];
    return ListTile(
    title: Text(bmi.bmiScore),
    trailing: IconButton(
    onPressed: () {
    dbHandler.deleteBMI(bmi.id);
    initState();
    setState(() {});
    },
    icon: const Icon(Icons.delete),
    ),
    );
    }),
      ),
    );
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BMI Rating"),
      ),
      body: Container(
        child: FutureBuilder(
            future: bmis,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var bmiList = snapshot.data as List<BMI>;
                return ListView.builder(
                  itemCount: bmiList.length,
                  itemBuilder: (BuildContext context, int index), {
                    BMI bmi = bmiList[index];
                    return ListTile(
                title: Text(bmi.bmiScore),
                trailing: IconButton(
                onPressed: () {
                  dbHandler.deleteBMI(bmi.id);
                  initState();
                  setState(() {});
                },
                icon: const Icon(Icon.delete),
                )
                )
                }
                );
              }
              else { return const CircularProgressIndicator();}
            }),
      ),
    );
  }

  @override
  void initState() {
    var bmis = getBMIList();
  }

  Future<List<BMI>> getBMIList() async {
    return await DatabaseHandler().getAllBMI();
  }
}
