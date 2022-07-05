import 'package:flutter/material.dart';
import 'package:flutter_3d_choice_chip/flutter_3d_choice_chip.dart';

import '../businessObject/User.dart';

class UserWidgets extends StatefulWidget {
  final Function(int) onChange;
  final List<User> users;

  const UserWidgets({Key? key, required this.users, required this.onChange})
      : super(key: key);

  @override
  State<UserWidgets> createState() => _UserWidgetsState();
}

class _UserWidgetsState extends State<UserWidgets> {
  int _gender = 0;

  final ChoiceChip3DStyle selectedStyle = ChoiceChip3DStyle(
      topColor: Colors.grey[200]!,
      backColor: Colors.grey,
      borderRadius: BorderRadius.circular(20));

  final ChoiceChip3DStyle unselectedStyle = ChoiceChip3DStyle(
      topColor: Colors.white,
      backColor: Colors.grey[300]!,
      borderRadius: BorderRadius.circular(20));

  Widget buildCard(User user) => ChoiceChip3D(
      border: Border.all(color: Colors.grey),
      style: _gender == user.id ? selectedStyle : unselectedStyle,
      onSelected: () {
        setState(() {
          _gender = user.id!;
        });
        widget.onChange(_gender);
      },
      onUnSelected: () {},
      selected: _gender == user.id,
      child: Column(
        children: [
          Image.asset(
            "assets/image/man.jpeg",
            width: 50,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(user.name),
        ],
      ));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) =>
                Column(children: [buildCard(widget.users[index])]),
            itemCount: widget.users.length),
      ),
    );
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
