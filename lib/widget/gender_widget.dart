import 'package:flutter/material.dart';
import 'package:flutter_3d_choice_chip/flutter_3d_choice_chip.dart';

import '../businessObject/User.dart';


class GenderWidget extends StatefulWidget {
  final User user;
  const GenderWidget({Key? key,required this.user}) : super(key: key);

  @override
  State<GenderWidget> createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  int _gender = 0;


  final ChoiceChip3DStyle selectedStyle = ChoiceChip3DStyle(
      topColor: Colors.grey[200]!,
      backColor: Colors.grey,
      borderRadius: BorderRadius.circular(20));

  final ChoiceChip3DStyle unselectedStyle = ChoiceChip3DStyle(
      topColor: Colors.white,
      backColor: Colors.grey[300]!,
      borderRadius: BorderRadius.circular(20));


  @override
  Widget build(BuildContext context,) {
    return ChoiceChip3D(
        border: Border.all(color: Colors.grey),
        style: _gender == widget.user.id! ? selectedStyle : unselectedStyle,
        onSelected: () {
          setState(() {
            _gender = widget.user.id!;
          });
//          widget.onChange(_gender);
        },
        onUnSelected: () {},
        selected: _gender == widget.user.id!,
        child: Column(
          children: [
            Image.asset(
              "assets/image/man.jpeg",
              width: 50,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(widget.user.name),
          ],
        ));
  }
}
/*
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
          buildCard("Linus", 1),
            const SizedBox(width: 20,),
            buildCard("Pietro", 2),
            const SizedBox(width: 20,),
            buildCard("Didier", 3),
            const SizedBox(width: 20,),
            buildCard("Mike", 4),
            const SizedBox(width: 20,),
            buildCard("Marco", 5),
            const SizedBox(width: 20,),
            const Icon(Icons.add, color: Colors.blue,),
            const InkWell(
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor:  Colors.blue,
                  child: Icon(Icons.add, color: Colors.white,),
                ),
            )
          ]
          )
        ),
      );
  }*/

