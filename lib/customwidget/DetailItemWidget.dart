import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';

class DetailItemWidget extends StatelessWidget {
  final String heading;
  final String value;

  DetailItemWidget({this.heading, this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 7),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Text(
            heading,
            style: TextStyle(color: AppColors.APP_MENU_TEXT, fontSize: 12),
          )),
          Expanded(
              child: Text(value,
                  style: TextStyle(
                      color: AppColors.APP_MENU_SUBHEADER_TEXT, fontSize: 12)))
        ],
      ),
    );
  }
}
