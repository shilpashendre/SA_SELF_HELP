import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/customwidget/DetailItemWidget.dart';

class MyClaimStatus extends StatefulWidget {
  @override
  _MyClaimStatusState createState() => _MyClaimStatusState();
}

class _MyClaimStatusState extends State<MyClaimStatus> {
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
                    child: Column(children: <Widget>[
                      DetailItemWidget(
                        heading: "Policy Number",
                        value: "SAT71619",
                      ),
                      DetailItemWidget(
                        heading: "Claim Number",
                        value: "-",
                      ),
                      DetailItemWidget(
                        heading: "Date Claim Reported",
                        value: "-",
                      ),
                      DetailItemWidget(
                        heading: "Date Claim Qccurred",
                        value: "-",
                      ),
                      DetailItemWidget(
                        heading: "Claim Type",
                        value: "N/A",
                      ),
                      DetailItemWidget(
                        heading: "Current Claim Status",
                        value: "R0.00",
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
