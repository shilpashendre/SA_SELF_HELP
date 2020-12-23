import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/customwidget/DetailItemWidget.dart';

class BankDetailsTab extends StatefulWidget {
  @override
  _BankDetailsTabState createState() => _BankDetailsTabState();
}

class _BankDetailsTabState extends State<BankDetailsTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.APP_HEADER_BG_GREY,
      body: SingleChildScrollView(
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
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration:
                          BoxDecoration(color: AppColors.APP_HEADER_BG_GREY),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "ABSA",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: AppColors.APP_GREEN,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 15),
                      child: Column(children: <Widget>[
                        DetailItemWidget(
                          title: "Current Month's Mileage...",
                          value: "391.15 km",
                        ),
                        DetailItemWidget(
                          title: "Current Month's Days wit...",
                          value: "0",
                        ),
                        DetailItemWidget(
                          title: "Total Drive Time",
                          value: "0.0 hr",
                        ),
                        DetailItemWidget(
                          title: "Braking Alerts per 100 k...",
                          value: "0",
                        ),
                        DetailItemWidget(
                          title: "Harsh Turning Alerts",
                          value: "0",
                        ),
                        DetailItemWidget(
                          title: "Harsh Turning Alerts per...",
                          value: "0",
                        ),
                        DetailItemWidget(
                          title: "Speeding Alerts",
                          value: "0",
                        ),
                        DetailItemWidget(
                          title: "Last Signal Received Date",
                          value: "03 December 2020",
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
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
                          "November 2020",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: AppColors.APP_GREEN,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 15),
                      child: Column(children: <Widget>[
                        DetailItemWidget(
                          title: "Current Month's Mileage...",
                          value: "391.15 km",
                        ),
                        DetailItemWidget(
                          title: "Current Month's Days wit...",
                          value: "0",
                        ),
                        DetailItemWidget(
                          title: "Total Drive Time",
                          value: "0.0 hr",
                        ),
                        DetailItemWidget(
                          title: "Braking Alerts per 100 k...",
                          value: "0",
                        ),
                        DetailItemWidget(
                          title: "Harsh Turning Alerts",
                          value: "0",
                        ),
                        DetailItemWidget(
                          title: "Harsh Turning Alerts per...",
                          value: "0",
                        ),
                        DetailItemWidget(
                          title: "Speeding Alerts",
                          value: "0",
                        ),
                        DetailItemWidget(
                          title: "Last Signal Received Date",
                          value: "03 December 2020",
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
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
                          "Octomber 2020",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: AppColors.APP_GREEN,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 15),
                      child: Column(children: <Widget>[
                        DetailItemWidget(
                          title: "Current Month's Mileage...",
                          value: "391.15 km",
                        ),
                        DetailItemWidget(
                          title: "Current Month's Days wit...",
                          value: "0",
                        ),
                        DetailItemWidget(
                          title: "Total Drive Time",
                          value: "0.0 hr",
                        ),
                        DetailItemWidget(
                          title: "Braking Alerts per 100 k...",
                          value: "0",
                        ),
                        DetailItemWidget(
                          title: "Harsh Turning Alerts",
                          value: "0",
                        ),
                        DetailItemWidget(
                          title: "Harsh Turning Alerts per...",
                          value: "0",
                        ),
                        DetailItemWidget(
                          title: "Speeding Alerts",
                          value: "0",
                        ),
                        DetailItemWidget(
                          title: "Last Signal Received Date",
                          value: "03 December 2020",
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    ));
  }
}
