import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfilPicture extends StatefulWidget {
  const UserProfilPicture({Key? key}) : super(key: key);

  @override
  State<UserProfilPicture> createState() => _UserProfilPictureState();
}

class _UserProfilPictureState extends State<UserProfilPicture> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 115,
            width: 115,
            child: Stack(
              fit: StackFit.expand,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/image/man.jpeg"),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: SizedBox(
                      height: 35,
                      width: 35,
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ))),
                        child: Icon(Icons.camera_alt, color: Colors.black),
                      )),
                )
              ],
            )),
      ],
    );
  }
}

class UserProfilBody extends StatefulWidget {
  const UserProfilBody({Key? key}) : super(key: key);

  @override
  State<UserProfilBody> createState() => _UserProfilBodyState();
}

class _UserProfilBodyState extends State<UserProfilBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const UserProfilPicture(),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.grey[300])),
                child: Row(
                  children: [
                    Icon(Icons.supervised_user_circle_rounded),
                    SizedBox(
                      width: 20,
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
              SizedBox(
                height: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class EditProfilePage2 extends StatefulWidget {
  const EditProfilePage2({Key? key}) : super(key: key);

  @override
  State<EditProfilePage2> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage2> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(),
    body: ListView(
      padding: EdgeInsets.symmetric(horizontal: 32),
      physics: BouncingScrollPhysics(),
      children: [
      ],
    ),

  );
}
