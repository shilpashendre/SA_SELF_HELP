import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/customwidget/ButtonComponent.dart';
import 'package:sahelp/customwidget/CardContainer.dart';
import 'package:sahelp/customwidget/DetailItemWidget.dart';
import 'package:sahelp/dialogs/UpdateProfileMSGDialog.dart';
import 'package:sahelp/pages/PolicyDisplayTab.dart';

class PolicyDetails extends StatefulWidget {
  @override
  _PolicyDetailsState createState() => _PolicyDetailsState();
}

class _PolicyDetailsState extends State<PolicyDetails> {
  viewPolicyTabs() {
    Navigator.popAndPushNamed(context, PolicyDisplayTab.routeName);
  }

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
          title: "Product",
          value: "Vehicle Owner Protection Pl...",
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Broker Name",
          value: "SA Taxi Product (Pty) Ltd",
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Motor Insurer Name",
          value: "Guardrisk Insurance Company",
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Start Date",
          value: "01 September 2015",
          showPrice: false,
        ),
        DetailItemWidget(
          title: "Total Premium",
          value: "R0.00",
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
      body: Column(
        children: [
          CardContainer(
            headerTitle: "063365:059721",
            headerColor: AppColors.APP_GREEN,
            widget: content(context),
          ),
        ],
      ),
    ));
  }
}
