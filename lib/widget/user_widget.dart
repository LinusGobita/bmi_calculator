import 'package:flutter/material.dart';
import 'package:flutter_3d_choice_chip/flutter_3d_choice_chip.dart';


class GenderWidget extends StatefulWidget {
  final Function(int) onChange;
  const GenderWidget({Key? key, required this.onChange}) : super(key: key);

  @override
  State<GenderWidget> createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  int _gender = 0;

  final users = [];

  final ChoiceChip3DStyle selectedStyle = ChoiceChip3DStyle(
      topColor: Colors.grey[200]!,
      backColor: Colors.grey,
      borderRadius: BorderRadius.circular(20));

  final ChoiceChip3DStyle unselectedStyle = ChoiceChip3DStyle(
      topColor: Colors.white,
      backColor: Colors.grey[300]!,
      borderRadius: BorderRadius.circular(20));

  Widget buildCard(String name ) => ChoiceChip3D(
      border: Border.all(color: Colors.grey),
      style: _gender == 1 ? selectedStyle : unselectedStyle,
      onSelected: () {
        setState(() {
          _gender = 1;
        });
        widget.onChange(_gender);
      },
      onUnSelected: () {},
      selected: _gender == 1,
      child: Column(
        children: [
          Image.asset(
            "assets/image/man.jpeg",
            width: 50,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(name),
        ],
      )
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildCard("Linus"),
          const SizedBox(width: 20,),
          buildCard("Pietro"),
          const SizedBox(width: 20,),
          buildCard("Didier"),
          const SizedBox(width: 20,),
          buildCard("Mike"),
          const SizedBox(width: 20,),
          buildCard("Marco"),
          const SizedBox(width: 20,),
          const InkWell(
            child: CircleAvatar(
              radius: 12,
              backgroundColor:  Colors.blue,
              child: Icon(Icons.add, color: Colors.white,),
            ),
          )

        ],
      ),
    );
  }
}
