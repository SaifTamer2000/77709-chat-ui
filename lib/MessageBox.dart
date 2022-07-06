import 'package:flutter/material.dart';

class MessageBox extends StatelessWidget {
  late String Messager;
  late double Wid, height;
  late TextAlign textal;
  MessageBox(this.Messager, this.Wid, this.height, this.textal);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: Wid,
        height: height,
        child: TextField(
          textAlign: textal,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(color: Colors.white, width: 2)),
              hintText: Messager,
              hintStyle: TextStyle(color: Colors.white)),
        ));
  }
}
