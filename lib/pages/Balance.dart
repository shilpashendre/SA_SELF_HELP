import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/constants/Utility.dart';
import 'package:sahelp/customwidget/CardContainer.dart';
import 'package:sahelp/customwidget/CustomErrorWidget.dart';
import 'package:sahelp/customwidget/DetailItemWidget.dart';

class Balance extends StatefulWidget {
  static const String routeName = '/dealdetails';
  @override
  _BalanceState createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  var response;

  @override
  void initState() {
    super.initState();

    getApiResponse();
  }

  void getApiResponse() async {
    response = await Utility.postapis(
        "SProc_Mobility_GetBalanceDetails", ["@IDNumber~~7506125555085"]);

    setState(() {
      response = response["NewDataSet"]["SProc_Mobility_GetBalanceDetails"];
    });
    // print(response);
  }

  Widget content(BuildContext context, response) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
      child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 7),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Text(
                "Arrears Amount",
                style: TextStyle(color: AppColors.APP_MENU_TEXT, fontSize: 12),
              )),
              Expanded(
                  child: Text(response["ArrearsAmount"],
                      style: TextStyle(color: AppColors.APP_RED, fontSize: 12)))
            ],
          ),
        ),
        DetailItemWidget(
          title: "Capital Amount",
          value: response["CapitalAmount"],
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Payment Arrangement Date",
          value: response["PTPDate"],
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Payment Arrangement Amount",
          value: response["PTPAmount"],
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Total Outstanding",
          value: response["TotalOutstanding"],
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
      body: response != null
          ? Column(
              children: [
                CardContainer(
                    headerTitle: response["AccountNumber"],
                    headerColor: AppColors.APP_RED,
                    widget: content(context, response)),
              ],
            )
          : CustomErrorWidget(),
    ));
  }
}
