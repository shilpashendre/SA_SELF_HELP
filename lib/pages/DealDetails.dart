import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';

class DealDetails extends StatefulWidget {
  @override
  _DealDetailsBState createState() => _DealDetailsBState();
}

class _DealDetailsBState extends State<DealDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.APP_HEADER_BG_GREY,
      appBar: AppBar(
        title: Text("DEAL DETAILS"),
        backgroundColor: AppColors.PRIMARY_COLOR,
        elevation: 0,
      ),
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
                    child: Expanded(
                      child: Column(children: <Widget>[
                        DealDetailsWidgets(
                          heading: "Account Status",
                          value: "Open",
                        ),
                        DealDetailsWidgets(
                          heading: "Vehicle Description",
                          value: "TOYOTA QUANTUM SESFIKLE 1...",
                        ),
                        DealDetailsWidgets(
                          heading: "Payment Type",
                          value: "CASH",
                        ),
                        DealDetailsWidgets(
                          heading: "Next Instalment Date",
                          value: "01 January 2021",
                        ),
                        DealDetailsWidgets(
                          heading: "Monthly Instalment",
                          value: "R31 889.99",
                        ),
                        DealDetailsWidgets(
                          heading: "Instalment remaining",
                          value: "14",
                        ),
                        DealDetailsWidgets(
                          heading: "Interest Rate",
                          value: "24.5%",
                        ),
                        DealDetailsWidgets(
                          heading: "Deal Inception Date",
                          value: "03 November 2015",
                        ),
                        DealDetailsWidgets(
                          heading: "Deal Expiry Date",
                          value: "03 February 2015",
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

class DealDetailsWidgets extends StatelessWidget {
  final String heading;
  final String value;

  DealDetailsWidgets({this.heading, this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 7),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Text(
            heading,
            style: TextStyle(color: AppColors.APP_MENU_TEXT,fontSize: 12),
          )),
          Expanded(
              child: Text(value,
                  style: TextStyle(color: AppColors.APP_MENU_SUBHEADER_TEXT,fontSize: 12)))
        ],
      ),
    );
  }
}
