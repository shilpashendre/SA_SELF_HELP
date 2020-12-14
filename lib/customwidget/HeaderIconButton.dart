import 'package:flutter/material.dart';

class HeaderIconButton extends StatelessWidget {
  final String iconName;

  HeaderIconButton({this.iconName});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Image.asset(
          "assets/images/" + iconName,
        ),
        onPressed: null);
  }
}
