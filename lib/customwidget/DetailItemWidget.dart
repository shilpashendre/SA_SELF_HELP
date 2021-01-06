import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/constants/Utility.dart';

class DetailItemWidget extends StatelessWidget {
  final String title;
  final String value;
  final bool showPrice;
  final String price;

  DetailItemWidget({this.title, this.value, this.showPrice, this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 7),
      child: Row(
        children: <Widget>[
          Expanded(
              flex: showPrice ? 2 : 1,
              child: Text(
                Utility.displayStr(title),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              )),
          showPrice
              ? Expanded(
                  flex: 1,
                  child: Text(
                    price,
                    style:
                        TextStyle(color: AppColors.APP_MENU_TEXT, fontSize: 12),
                  ))
              : Container(),
          Expanded(
              flex: 1,
              child: Text(Utility.displayValue(value),
                  style: TextStyle(
                      color: AppColors.APP_MENU_SUBHEADER_TEXT, fontSize: 13)))
        ],
      ),
    );
  }
}
