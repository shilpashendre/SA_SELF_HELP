import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/constants/Utility.dart';
import 'package:sahelp/constants/device_helper.dart';
import 'package:sahelp/customwidget/CardContainer.dart';
import 'package:sahelp/customwidget/DetailItemWidget.dart';
import 'package:sahelp/customwidget/HeaderTabInfo.dart';

class YourCoverTab extends StatefulWidget {
  static const String routeName = '/dealdetails';
  @override
  _YourCoverTabState createState() => _YourCoverTabState();
}

class _YourCoverTabState extends State<YourCoverTab> {
  Widget content(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      child: Column(children: <Widget>[
        DetailItemWidget(
          title: "Comprehensive...",
          price: "R0.00",
          value: "R0.00",
          showPrice: true,
        ),
        DetailItemWidget(
          title: "Windscreen",
          price: "",
          value: "R0.00",
          showPrice: true,
        ),
        DetailItemWidget(
          title: "SASRIA",
          price: "",
          value: "R0.00",
          showPrice: true,
        ),
        DetailItemWidget(
          title: "Admin Fee",
          price: "",
          value: "-",
          showPrice: true,
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.APP_HEADER_BG_GREY,
      body: Column(
        children: [
          Center(
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
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration:
                        BoxDecoration(color: AppColors.APP_HEADER_BG_GREY),
                    child: HeaderTabInfo(
                      text: "SAT71619",
                      txtColor: AppColors.APP_HEADER_BLUE,
                    ),
                  ),
                  CardContainer(
                    headerColor: AppColors.APP_HEADER_BLUE,
                    headerTitle: "SAT71619",
                    widget: content(context),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
