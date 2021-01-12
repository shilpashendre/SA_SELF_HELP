import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/constants/Utility.dart';
import 'package:sahelp/constants/device_helper.dart';
import 'package:sahelp/customwidget/CardContainer.dart';
import 'package:sahelp/customwidget/CustomErrorWidget.dart';
import 'package:sahelp/customwidget/DetailItemWidget.dart';

class ArrearsStmtTab extends StatefulWidget {
  @override
  _ArrearsStmtTabState createState() => _ArrearsStmtTabState();
}

class _ArrearsStmtTabState extends State<ArrearsStmtTab> {
   var response;
  bool showLoader = true;

  @override
  void initState() {
    super.initState();

    getApiResponse();
  }

  void getApiResponse() async {
    response = await Utility.postapis("SProc_Mobility_GetArrearsStatement",
        ["@AccountNumber~~" + Utility.accountNumber]);
    setState(() {
      response = response["NewDataSet"] != null
          ? response["NewDataSet"]["SProc_Mobility_GetArrearsStatement"]
          : null;
    });
    print(response);
  }

  Widget content(BuildContext context, List response) {
    return Column(
        children: response.asMap().entries.map((value) {
      return Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
            child: Column(children: <Widget>[
              DetailItemWidget(
                title: "Date",
                value: value.value["ValueDate"],
                showPrice: false,
              ),
              DetailItemWidget(
                title: "Installment",
                value: value.value["Instalment"],
                showPrice: false,
              ),
              DetailItemWidget(
                title: "Other",
                showPrice: false,
                value: value.value["Other"],
              ),
              DetailItemWidget(
                title: "Payments",
                value: value.value["Payments"],
                showPrice: false,
              ),
              DetailItemWidget(
                title: "Interest on Arrears",
                value: value.value["InterestOnArrears"],
                showPrice: false,
              ),
              DetailItemWidget(
                title: "Total Arrears",
                value: value.value["TotalArrears"],
                showPrice: false,
                color:AppColors.APP_GREEN
              ),
            ]),
          ),
          Divider(
            color: AppColors.DIVIDER,
            indent: 15,
            endIndent: 15,
          ),
        ],
      );
    }).toList());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.APP_HEADER_BG_GREY,
          body: Container(
            height: DeviceHelper.fullHeight,
            width: DeviceHelper.fullWidth,
            child: response != null
                ? SingleChildScrollView(
                    child: CardContainer(
                      headerColor: AppColors.APP_GREEN,
                      headerTitle: response[0]["ValueDate"],
                      widget: content(context, response),
                    ),
                  )
                : CustomErrorWidget(showLoader: showLoader)
          )),
    );
  }
}
