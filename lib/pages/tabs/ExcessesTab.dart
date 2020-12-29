import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/customwidget/CardContainer.dart';
import 'package:sahelp/customwidget/DetailItemWidget.dart';
import 'package:sahelp/customwidget/HeaderTabInfo.dart';

class ExcessesTab extends StatefulWidget {
  static const String routeName = '/dealdetails';
  @override
  _ExcessesTabState createState() => _ExcessesTabState();
}

class _ExcessesTabState extends State<ExcessesTab> {
  Widget content(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      child: Column(children: <Widget>[
        DetailItemWidget(
          title: "Basic Excess",
          price: "R5000",
          value: "R0 when repairs ar...",
          showPrice: true,
        ),
        DetailItemWidget(
          title: "Basic excess at approve...",
          price: "R5000",
          value: "R124 029.09",
          showPrice: true,
        ),
        DetailItemWidget(
          title: "Extra excess if driver u...",
          price: "R+2000",
          value: "R+2000",
          showPrice: true,
        ),
        DetailItemWidget(
          title: "Extra excess if driver u...",
          price: "+R2000",
          value: "+R2000",
          showPrice: true,
        ),
        DetailItemWidget(
          title: "Windscreen",
          price: "R1000",
          value: "R1000",
          showPrice: true,
        ),
        DetailItemWidget(
          title: "Windscreen at approve...",
          price: "R300",
          value: "R300",
          showPrice: true,
        ),
        DetailItemWidget(
          title: "Windscreen",
          price: "R1000",
          value: "R1000",
          showPrice: true,
        ),
      ]),
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
                  CardContainer(
                    headerColor: AppColors.APP_HEADER_BLUE,
                    headerTitle: "SAT71619",
                    widget: content(context),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
