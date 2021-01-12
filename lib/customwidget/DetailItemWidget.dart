import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/constants/Utility.dart';

class DetailItemWidget extends StatelessWidget {
  final String title;
  final String value;
  final bool showPrice;
  final String price;
  final Color color;

  DetailItemWidget(
      {this.title, this.value, this.showPrice, this.price, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 7),
      child: Row(
        children: <Widget>[
          Expanded(
              flex: showPrice ? 2 : 1,
              child: Text(
                Utility.displayValue(title, "N/A"),
                overflow: TextOverflow.ellipsis,
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
                    overflow: TextOverflow.ellipsis,
                    style:
                        TextStyle(color: AppColors.APP_MENU_TEXT, fontSize: 12),
                  ))
              : Container(),
          Expanded(
              flex: 1,
              child: Text(Utility.displayValue(value, "N/A"),
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: color != null
                          ? color
                          : AppColors.APP_MENU_SUBHEADER_TEXT,
                      fontSize: 13)))
        ],
      ),
    );
  }
}
