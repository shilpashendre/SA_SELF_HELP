import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/customwidget/HeaderTabInfo.dart';

class ExcessesTab extends StatefulWidget {
  static const String routeName = '/dealdetails';
  @override
  _ExcessesTabState createState() => _ExcessesTabState();
}

class _ExcessesTabState extends State<ExcessesTab> {
  Widget policyDetailrow(String title, String price, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 7),
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 2,
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              )),
          Expanded(
              flex: 1,
              child: Text(
                price,
                style: TextStyle(color: AppColors.APP_MENU_TEXT, fontSize: 12),
              )),
          Expanded(
              flex: 1,
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
                        "Basic Excess",
                        "R5000",
                        "R0 when repairs ar...",
                      ),
                      policyDetailrow(
                        "Basic excess at approve...",
                        "R5000",
                        "R124 029.09",
                      ),
                      policyDetailrow(
                        "Extra excess if driver u...",
                        "R+2000",
                        "R+2000",
                      ),
                      policyDetailrow(
                        "Extra excess if driver u...",
                        "+R2000",
                        "+R2000",
                      ),
                      policyDetailrow(
                        "Windscreen",
                        "R1000",
                        "R1000",
                      ),
                      policyDetailrow(
                        "Windscreen at approve...",
                        "R300",
                        "R300",
                      ),
                      policyDetailrow(
                        "Windscreen",
                        "R1000",
                        "R1000",
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
