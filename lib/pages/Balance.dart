import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/customwidget/DetailItemWidget.dart'; 

class Balance extends StatefulWidget {
  static const String routeName = '/dealdetails';
  @override
  _BalanceState createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
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
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "063365:065978",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.APP_RED,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                    child: Expanded(
                      child: Column(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 7),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  child: Text(
                                "Arrears Amount",
                                style: TextStyle(
                                    color: AppColors.APP_MENU_TEXT,
                                    fontSize: 12),
                              )),
                              Expanded(
                                  child: Text("R112 111.81",
                                      style: TextStyle(
                                          color: AppColors.APP_RED,
                                          fontSize: 12)))
                            ],
                          ),
                        ),
                        DetailItemWidget(
                          heading: "Capital Amount",
                          value: "R124 029.09",
                        ),
                        DetailItemWidget(
                          heading: "Payment Arrangement Date",
                          value: "N/A",
                        ),
                        DetailItemWidget(
                          heading: "Payment Arrangement Amount",
                          value: "N/A",
                        ),
                        DetailItemWidget(
                          heading: "Total Outstanding",
                          value: "R236 140.90",
                        ),
                      ]),
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
