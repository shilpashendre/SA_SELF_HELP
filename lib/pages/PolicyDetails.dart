import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/constants/Utility.dart';
import 'package:sahelp/customwidget/ButtonComponent.dart';
import 'package:sahelp/customwidget/CardContainer.dart';
import 'package:sahelp/customwidget/CustomErrorWidget.dart';
import 'package:sahelp/customwidget/DetailItemWidget.dart';
import 'package:sahelp/dialogs/UpdateProfileMSGDialog.dart';
import 'package:sahelp/pages/PolicyDisplayTab.dart';

class PolicyDetails extends StatefulWidget {
  @override
  _PolicyDetailsState createState() => _PolicyDetailsState();
}

class _PolicyDetailsState extends State<PolicyDetails> {
  var response;
  
  viewPolicyTabs() {
    Navigator.popAndPushNamed(context, PolicyDisplayTab.routeName);
  }

  @override
  void initState() {
    super.initState();

    getApiResponse();
  }

  void getApiResponse() async {
     
    response = await Utility.postapis("SProc_Mobility_GetPolicyDetails", ["@IDNumber~~7506125555085"]);
    setState(() {
      response = response["NewDataSet"]["SProc_Mobility_GetPolicyDetails"];
    });
    // print(response);
  }

  Widget content(BuildContext context, response) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
      child: Column(children: <Widget>[
        DetailItemWidget(
          title: "Policy Number",
          value: response["PolicyNo"],
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Product",
          value: response["Product"],
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Broker Name",
          value: response["BrokerName"],
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Motor Insurer Name",
          value: response["MotorInsurerName"],
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Start Date",
          value: response["startDate"],
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Total Premium",
          value: response["TotalPremium"],
          showPrice: false,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
          child: Divider(color: AppColors.APP_GREY_DIVIDER, thickness: 2),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ButtonComponent(
                btnLabel: "VIEW DETAILS",
                btnColor: AppColors.PRIMARY_COLOR,
                onTap: viewPolicyTabs,
              ),
              ButtonComponent(
                btnLabel: "GET A QUOTE",
                btnColor: AppColors.APP_MENU_SUBHEADER_TEXT,
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return UpdateProfileMSGDialog(
                          dialogMsg: "Your request submitted successfully.",
                          showExit: false,
                        );
                      });
                },
              )
            ])
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
                    headerColor: AppColors.APP_GREEN,
                    widget: content(context, response)),
              ],
            )
          : CustomErrorWidget(),
    ));
  }
}
