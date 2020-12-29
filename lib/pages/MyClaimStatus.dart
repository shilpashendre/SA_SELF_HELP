import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/customwidget/CardContainer.dart';
import 'package:sahelp/customwidget/DetailItemWidget.dart';

class MyClaimStatus extends StatefulWidget {
  @override
  _MyClaimStatusState createState() => _MyClaimStatusState();
}

class _MyClaimStatusState extends State<MyClaimStatus> {
  Widget content(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
      child: Column(children: <Widget>[
        DetailItemWidget(
          title: "Policy Number",
          value: "SAT71619",
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Claim Number",
          value: "-",
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Date Claim Reported",
          value: "-",
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Date Claim Qccurred",
          value: "-",
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Claim Type",
          value: "N/A",
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Current Claim Status",
          value: "R0.00",
          showPrice: false,
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
          CardContainer(
            headerColor: AppColors.APP_GREEN,
            headerTitle: "063365:059721",
            widget: content(context),
          )
        ],
      ),
    ));
  }
}
