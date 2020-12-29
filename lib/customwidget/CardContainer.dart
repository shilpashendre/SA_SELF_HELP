import "package:flutter/material.dart"; 
import 'package:sahelp/customwidget/DetailItemWidget.dart';
import 'package:sahelp/customwidget/HeaderTabInfo.dart';

class CardContainer extends StatelessWidget {
  final String headerTitle;
  final Color headerColor;
  final Widget widget;

  CardContainer({this.headerTitle, this.headerColor,this.widget});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width / 1.1,
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
            )
          ],
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HeaderTabInfo(txtColor: headerColor, text: headerTitle),
          widget ],
        ),
      ),
    );
  }
}

// .dart
