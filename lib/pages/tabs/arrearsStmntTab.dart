import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/customwidget/DetailItemWidget.dart';
import 'package:sahelp/customwidget/HeaderTabInfo.dart';

class ArrearsStmtTab extends StatefulWidget {
  @override
  _ArrearsStmtTabState createState() => _ArrearsStmtTabState();
}

class _ArrearsStmtTabState extends State<ArrearsStmtTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.APP_HEADER_BG_GREY,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0,0,0,20),
          child: Column(
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
                      HeaderTabInfo(
                        txtColor: AppColors.APP_GREEN,
                        text: "Opening Balance: R92 039.05",
                       ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 15),
                        child: Column(children: <Widget>[
                          DetailItemWidget(
                            title: "Date",
                            value: "September 2020",
                          ),
                          DetailItemWidget(
                            title: "Installment",
                            value: "R13 657.02",
                          ),
                          DetailItemWidget(
                            title: "Other",
                            value: "-",
                          ),
                          DetailItemWidget(
                            title: "Payments",
                            value: "-R13 800.00",
                          ),
                          DetailItemWidget(
                            title: "Interest on Arrears",
                            value: "R1 919.45",
                          ),
                          DetailItemWidget(
                            title: "Total Arrears",
                            value: "R93 815.52",
                          ),
                        ]),
                      ),
                      Divider(
                        color: AppColors.DIVIDER,
                        indent: 15,
                        endIndent: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 15),
                        child: Column(children: <Widget>[
                          DetailItemWidget(
                            title: "Date",
                            value: "October 2020",
                          ),
                          DetailItemWidget(
                            title: "Installment",
                            value: "R13 657.02",
                          ),
                          DetailItemWidget(
                            title: "Other",
                            value: "-",
                          ),
                          DetailItemWidget(
                            title: "Payments",
                            value: "-R13 800.00",
                          ),
                          DetailItemWidget(
                            title: "Interest on Arrears",
                            value: "R1 919.45",
                          ),
                          DetailItemWidget(
                            title: "Total Arrears",
                            value: "R93 815.52",
                          ),
                        ]),
                      ),
                      Divider(
                        color: AppColors.DIVIDER,
                        indent: 15,
                        endIndent: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 15),
                        child: Column(children: <Widget>[
                          DetailItemWidget(
                            title: "Date",
                            value: "October 2020",
                          ),
                          DetailItemWidget(
                            title: "Installment",
                            value: "R13 657.02",
                          ),
                          DetailItemWidget(
                            title: "Other",
                            value: "-",
                          ),
                          DetailItemWidget(
                            title: "Payments",
                            value: "-R13 800.00",
                          ),
                          DetailItemWidget(
                            title: "Interest on Arrears",
                            value: "R1 919.45",
                          ),
                          DetailItemWidget(
                            title: "Total Arrears",
                            value: "R93 815.52",
                          ),
                        ]),
                      ),
                      Divider(
                        color: AppColors.DIVIDER,
                        indent: 15,
                        endIndent: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 15),
                        child: Column(children: <Widget>[
                          DetailItemWidget(
                            title: "Date",
                            value: "October 2020",
                          ),
                          DetailItemWidget(
                            title: "Installment",
                            value: "R13 657.02",
                          ),
                          DetailItemWidget(
                            title: "Other",
                            value: "-",
                          ),
                          DetailItemWidget(
                            title: "Payments",
                            value: "-R13 800.00",
                          ),
                          DetailItemWidget(
                            title: "Interest on Arrears",
                            value: "R1 919.45",
                          ),
                          DetailItemWidget(
                            title: "Total Arrears",
                            value: "R93 815.52",
                          ),
                        ]),
                      ),
                   
                  
                   
                    ],
                  ),
                   
                ),
                  
              ),
            ],
            
          ),
        ),
      ),
    ));
  }
}
