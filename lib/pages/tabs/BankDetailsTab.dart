import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/constants/Utility.dart';
import 'package:sahelp/constants/device_helper.dart';
import 'package:sahelp/customwidget/CardContainer.dart';
import 'package:sahelp/customwidget/CustomErrorWidget.dart';
import 'package:sahelp/customwidget/DetailItemWidget.dart';

class BankDetailsTab extends StatefulWidget {
  @override
  _BankDetailsTabState createState() => _BankDetailsTabState();
}

class _BankDetailsTabState extends State<BankDetailsTab> {
   var response;
  bool showLoader = true;

  @override
  void initState() {
    super.initState();

    getApiResponse();
  }

  void getApiResponse() async {
    response = await Utility.postapis("Sproc_Mobility_GetBankdetails",
        ["@AccountNumber~~" + Utility.accountNumber2]);

    setState(() {
      response = response["NewDataSet"] != null
          ? response["NewDataSet"]["Sproc_Mobility_GetBankdetails"]
          : null;
    });

    // print(response);
  }

  Widget content(BuildContext context, var response) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
      child: Column(children: <Widget>[
        DetailItemWidget(
          title: "Bank Name",
          showPrice: false,
          value: response["BankName"],
        ),
        DetailItemWidget(
          title: "Account Number",
          showPrice: false,
          value: response["AccountNo"],
        ),
        DetailItemWidget(
          title: "Total Drive TimeBranch Code",
          showPrice: false,
          value: response["BranchCode"],
        ),
        DetailItemWidget(
          title: "Branch Name",
          showPrice: false,
          value: response["BrachName"],
        ),
        DetailItemWidget(
          title: "Reference Number",
          showPrice: false,
          value: response["ReferenceNumber"],
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
          ? Container(
              height: DeviceHelper.fullHeight,
              width: DeviceHelper.fullWidth,
              child: ListView.builder(
                itemCount: response.length,
                itemBuilder: (context, counter) {
                  return Container(
                    child: Column(
                      children: [
                        CardContainer(
                            widget: content(context, response[counter]),
                            headerTitle: response[counter]["BankName"] != null
                                ? response[counter]["BankName"]
                                : "N/A",
                            headerColor: AppColors.APP_HEADER_BLUE),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          :CustomErrorWidget(showLoader: showLoader)
    ));
  }
}
