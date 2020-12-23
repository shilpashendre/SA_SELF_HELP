import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/customwidget/DetailItemWidget.dart';

class DealDetails extends StatefulWidget {
  static const String routeName = '/dealdetails';
  @override
  _DealDetailsState createState() => _DealDetailsState();
}

class _DealDetailsState extends State<DealDetails> {
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
                        title: "Account Status",
                        value: "Open",
                      ),
                      DetailItemWidget(
                        title: "Vehicle Description",
                        value: "TOYOTA QUANTUM SESFIKLE 1...",
                      ),
                      DetailItemWidget(
                        title: "Payment Type",
                        value: "CASH",
                      ),
                      DetailItemWidget(
                        title: "Next Instalment Date",
                        value: "01 January 2021",
                      ),
                      DetailItemWidget(
                        title: "Monthly Instalment",
                        value: "R31 889.99",
                      ),
                      DetailItemWidget(
                        title: "Instalment remaining",
                        value: "14",
                      ),
                      DetailItemWidget(
                        title: "Interest Rate",
                        value: "24.5%",
                      ),
                      DetailItemWidget(
                        title: "Deal Inception Date",
                        value: "03 November 2015",
                      ),
                      DetailItemWidget(
                        title: "Deal Expiry Date",
                        value: "03 February 2015",
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
