import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/customwidget/CardContainer.dart';
import 'package:sahelp/customwidget/DetailItemWidget.dart';

class DealDetails extends StatefulWidget {
  static const String routeName = '/dealdetails';
  @override
  _DealDetailsState createState() => _DealDetailsState();
}

class _DealDetailsState extends State<DealDetails> {
  
  Widget content(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
      child: Column(children: <Widget>[
        DetailItemWidget(
          title: "Account Status",
          value: "Open",
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Vehicle Description",
          value: "TOYOTA QUANTUM SESFIKLE 1...",
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Payment Type",
          value: "CASH",
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Next Instalment Date",
          value: "01 January 2021",
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Monthly Instalment",
          value: "R31 889.99",
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Instalment remaining",
          value: "14",
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Interest Rate",
          value: "24.5%",
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Deal Inception Date",
          value: "03 November 2015",
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Deal Expiry Date",
          value: "03 February 2015",
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
            headerTitle: "063365:065978",
            widget: content(context),
          )
        ],
      ),
    ));
  }
}
