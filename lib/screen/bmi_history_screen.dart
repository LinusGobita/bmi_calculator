import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../businessObject/BMI.dart';
import '../database/database_handler.dart';
import '../widget/appbar_widget.dart';

class BMIHistoryScreen extends StatefulWidget {
  const BMIHistoryScreen({Key? key}) : super(key: key);

  @override
  State<BMIHistoryScreen> createState() => _BMIHistoryScreen();
}

class _BMIHistoryScreen extends State<BMIHistoryScreen> {
  late List<BMI> bmis;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    refreshBMI();
  }

  void dispose() {
    //DatabaseHandler.instance.close();
    //super.dispose();
  }

  Future refreshBMI() async {
    setState(() => isLoading = true);
    this.bmis = await DatabaseHandler.instance.readAllBMI();
    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "Your BMI Score"),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : SizedBox(
              child: ListView.builder(
                  itemBuilder: (listViewContext, index) {
                    return Container(
                        color: Colors.white,
                        height: 100,
                        width: 50,
                        child: ListTile(
                            leading: Text(bmis[index].id.toString()),
                            trailing: Text(bmis[index].bmiScore.toString())));
                  },
                  itemCount: bmis.length)),
    );
  }
}
