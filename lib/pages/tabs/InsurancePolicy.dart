import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import "package:sahelp/customwidget/ButtonComponent.dart";
import 'package:sahelp/customwidget/HeaderTabInfo.dart';
import 'package:sahelp/dialogs/CustomDialogBox.dart';

class InsurancePolicy extends StatefulWidget {
  @override
  _InsurancePolicyState createState() => _InsurancePolicyState();
}

class _InsurancePolicyState extends State<InsurancePolicy> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.APP_HEADER_BG_GREY,
      body: Column(
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                  )
                ],
                color: Colors.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width,
                      decoration:
                          BoxDecoration(color: AppColors.APP_HEADER_BG_GREY),
                      child: HeaderTabInfo(
                        
                        text: "Comprehensive Cover*",
                        txtColor: AppColors.APP_HEADER_BLUE,
                      )),
                  Container(
                    margin: EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18, right: 18),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 18, 0, 10),
                            child: Text(
                              "Netwrok response",
                              style: TextStyle(
                                  color: AppColors.APP_MENU_SUBHEADER_TEXT),
                            ),
                          ),
                          Divider(
                            color: AppColors.APP_GREY_DIVIDER,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
