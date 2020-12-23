import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';

class DetailItemWidget extends StatelessWidget {
  final String title;
  final String value;

  DetailItemWidget({this.title, this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 7),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Text(
            title,
            style: TextStyle(
                color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
          )),
          Expanded(
              child: Text(value,
                  style: TextStyle(
                      color: AppColors.APP_MENU_SUBHEADER_TEXT, fontSize: 13)))
        ],
      ),
    );
  }
}
