import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RatingTextWidget extends StatefulWidget {
  const RatingTextWidget({Key? key}) : super(key: key);

  @override
  State<RatingTextWidget> createState() => _RatingTextWidgetState();
}

class _RatingTextWidgetState extends State<RatingTextWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:100,
      child:               TextButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor:
            MaterialStateProperty.all(Colors.grey[300])),
        child: Row(
          children: [
            Icon(Icons.supervised_user_circle_rounded),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                "My Account name",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ],
        ),
      ),

    );
  }
}
