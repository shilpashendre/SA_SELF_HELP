import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/customwidget/ButtonComponent.dart';
import 'package:sahelp/customwidget/DetailItemWidget.dart'; 

class PolicyDetails extends StatefulWidget {
  @override
  _PolicyDetailsState createState() => _PolicyDetailsState();
}

class _PolicyDetailsState extends State<PolicyDetails> {
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
                        "063365:059721",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.APP_GREEN,
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
                        DetailItemWidget(
                          heading: "Policy Number",
                          value: "SAT71619",
                        ),
                        DetailItemWidget(
                          heading: "Product",
                          value: "Vehicle Owner Protection Pl...",
                        ),
                        DetailItemWidget(
                          heading: "Broker Name",
                          value: "SA Taxi Product (Pty) Ltd",
                        ),
                        DetailItemWidget(
                          heading: "Motor Insurer Name",
                          value: "Guardrisk Insurance Company",
                        ),
                        DetailItemWidget(
                          heading: "Start Date",
                          value: "01 September 2015",
                        ),
                        DetailItemWidget(
                          heading: "Total Premium",
                          value: "R0.00",
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 0),
                          child: Divider(
                              color: AppColors.APP_GREY_DIVIDER, thickness: 2),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              ButtonComponent(
                                btnLabel: "VIEW DETAILS",
                                btnColor: AppColors.PRIMARY_COLOR,
                              ),
                              ButtonComponent(
                                btnLabel: "GET A QUOTE",
                                btnColor: AppColors.APP_MENU_SUBHEADER_TEXT,
                              )
                            ])
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
