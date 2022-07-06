import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  late Icon iconName;
  IconWidget(this.iconName);
  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.only(left: 10), child: iconName);
  }
}
