import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/constants/Utility.dart';
import 'package:sahelp/customwidget/CardContainer.dart';
import 'package:sahelp/customwidget/CustomErrorWidget.dart';
import 'package:sahelp/customwidget/DetailItemWidget.dart';

class DealDetails extends StatefulWidget {
  static const String routeName = '/dealdetails';
  @override
  _DealDetailsState createState() => _DealDetailsState();
}

class _DealDetailsState extends State<DealDetails> {
   var response;
  bool showLoader = true;

  @override
  void initState() {
    super.initState();

    getApiResponse();
  }

  void getApiResponse() async {
    response = await Utility.postapis(
        "SProc_Mobility_GetDealDetails", ["@IDNumber~~" + Utility.idNumber]);
    setState(() {
      response = response["NewDataSet"] != null
          ? response["NewDataSet"]["SProc_Mobility_GetDealDetails"]
          : null;
    });
    // print(response);
  }

  Widget content(BuildContext context, var response) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
      child: Column(children: <Widget>[
        DetailItemWidget(
          title: "Account Status",
          value: response["AccountStatus"],
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Vehicle Description",
          value: response["VehicleDescription"],
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Payment Type",
          value: response["PaymentType"],
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Next Instalment Date",
          value: response["NextInstalmentDate"],
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Monthly Instalment",
          value: response["MonthlyInstalment"],
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Instalment remaining",
          value: response["InstalmentsRemaining"],
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Interest Rate",
          value: response["InterestRate"],
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Deal Inception Date",
          value: response["DealInceptionDate"],
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Deal Expiry Date",
          value: response["DealExpiryDate"],
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
                  headerColor: AppColors.APP_GREEN,
                  headerTitle: response["AccountNumber"],
                  widget: content(context, response),
                )
              ],
            )
          :  CustomErrorWidget(showLoader: showLoader)
    ));
  }
}
