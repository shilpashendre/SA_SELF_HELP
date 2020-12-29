import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/customwidget/CardContainer.dart';
import 'package:sahelp/customwidget/DetailItemWidget.dart';

class BankDetailsTab extends StatefulWidget {
  @override
  _BankDetailsTabState createState() => _BankDetailsTabState();
}

class _BankDetailsTabState extends State<BankDetailsTab> {
  Widget content(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
      child: Column(children: <Widget>[
        DetailItemWidget(
          title: "Current Month's Mileage...",
          value: "391.15 km",
        ),
        DetailItemWidget(
          title: "Current Month's Days wit...",
          value: "0",
        ),
        DetailItemWidget(
          title: "Total Drive Time",
          value: "0.0 hr",
        ),
        DetailItemWidget(
          title: "Braking Alerts per 100 k...",
          value: "0",
        ),
        DetailItemWidget(
          title: "Harsh Turning Alerts",
          value: "0",
        ),
        DetailItemWidget(
          title: "Harsh Turning Alerts per...",
          value: "0",
        ),
        DetailItemWidget(
          title: "Speeding Alerts",
          value: "0",
        ),
        DetailItemWidget(
          title: "Last Signal Received Date",
          value: "03 December 2020",
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.APP_HEADER_BG_GREY,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardContainer(
                widget: content(context),
                headerTitle: "ABSA",
                headerColor: AppColors.APP_GREEN),
            SizedBox(
              height: 20,
            ),
            CardContainer(
                widget: content(context),
                headerTitle: "November 2020",
                headerColor: AppColors.APP_GREEN),
            SizedBox(
              height: 20,
            ),
            CardContainer(
                widget: content(context),
                headerTitle: "October 2020",
                headerColor: AppColors.APP_GREEN),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    ));
  }
}
