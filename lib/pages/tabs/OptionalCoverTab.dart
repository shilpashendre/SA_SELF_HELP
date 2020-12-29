import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/customwidget/DetailItemWidget.dart';
import 'package:sahelp/customwidget/HeaderTabInfo.dart';

class OptionalCoverTab extends StatefulWidget {
  static const String routeName = '/dealdetails';
  @override
  _OptionalCoverTabState createState() => _OptionalCoverTabState();
}

class _OptionalCoverTabState extends State<OptionalCoverTab> {
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
                      DetailItemWidget(
                        title: "Deposite Protect",
                        price: "",
                        value: "-",
                        showPrice: true,
                      ),
                      DetailItemWidget(
                        title: "Zero Excess",
                        price: "",
                        value: "-",
                        showPrice: true,
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
