import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  late String ImagePath;
  ProfilePic(this.ImagePath);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(ImagePath), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(50)),
          border: Border.all(color: Color.fromARGB(0, 0, 0, 0), width: 3)),
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
    );
  }
}
