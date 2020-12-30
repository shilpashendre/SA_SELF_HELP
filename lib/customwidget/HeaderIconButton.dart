import 'package:flutter/material.dart';
import 'package:sahelp/constants/Utility.dart';
import 'package:sahelp/dialogs/SurveyDialog.dart';

class HeaderIconButton extends StatelessWidget {
  final String iconName;

  HeaderIconButton({this.iconName});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Image.asset(
          "assets/images/" + iconName,
          height: 25,
          width: 25,
        ),
        onPressed: () {
          if (iconName == "survey.png") {
            showDialog(
              context: context,
              builder: (context) => SurveyDialog(),
            );
          } else {
            Utility.shareData(context, "hello", "good morning");
          }
        });
  }
}
