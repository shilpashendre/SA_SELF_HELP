import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/constants/device_helper.dart';
import 'package:sahelp/customwidget/HeaderTabInfo.dart';

class YourCoverTab extends StatefulWidget {
  static const String routeName = '/dealdetails';
  @override
  _YourCoverTabState createState() => _YourCoverTabState();
}

class _YourCoverTabState extends State<YourCoverTab> {
  Widget policyDetailrow(String title, String price, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 7),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Text(
            DeviceHelper.displayStr(title),
            style: TextStyle(
                color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
          )),
          Expanded(
              child: Text(
            price,
            style: TextStyle(color: AppColors.APP_MENU_TEXT, fontSize: 12),
          )),
          Expanded(
              child: Text(value,
                  style: TextStyle(
                      color: AppColors.APP_MENU_SUBHEADER_TEXT, fontSize: 13)))
        ],
      ),
    );
  }

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
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration:
                        BoxDecoration(color: AppColors.APP_HEADER_BG_GREY),
                    child: HeaderTabInfo(
                      text: "SAT71619",
                      txtColor: AppColors.APP_HEADER_BLUE,
                      
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                    child: Column(children: <Widget>[
                      policyDetailrow(
                        "Comprehensive...",
                        "R0.00",
                        "R0.00",
                      ),
                      policyDetailrow(
                        "Windscreen",
                        "",
                        "R0.00",
                      ),
                      policyDetailrow(
                        "SASRIA",
                        "",
                        "R0.00",
                      ),
                      policyDetailrow(
                        "Admin Fee",
                        "",
                        "-",
                      ),
                    ]),
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
