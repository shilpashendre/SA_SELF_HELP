import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';

class HeaderTabInfo extends StatelessWidget {
  final Color txtColor;
  final String text;
  final bool isBold;

  HeaderTabInfo({this.txtColor, this.text, this.isBold});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: AppColors.APP_HEADER_BG_GREY),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: txtColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
