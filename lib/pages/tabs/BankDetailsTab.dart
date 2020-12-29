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
          title: "Bank Name",
          showPrice: false,
          value: "ABSA",
        ),
        DetailItemWidget(
          title: "Account Number",
          showPrice: false,
          value: "407502125111",
        ),
        DetailItemWidget(
          title: "Total Drive TimeBranch Code",
          showPrice: false,
          value: "63 20 05",
        ),
        DetailItemWidget(
          title: "Branch Name",
          showPrice: false,
          value: "Business Cenre",
        ),
        DetailItemWidget(
          title: "Reference Number",
          showPrice: false,
          value: "Deal Number",
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
                headerColor: AppColors.APP_HEADER_BLUE),
            SizedBox(
              height: 20,
            ),
            CardContainer(
                widget: content(context),
                headerTitle: "FNB",
                headerColor: AppColors.APP_HEADER_BLUE),
            SizedBox(
              height: 20,
            ),
            CardContainer(
                widget: content(context),
                headerTitle: "NEDBANK",
                headerColor: AppColors.APP_HEADER_BLUE),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    ));
  }
}
