import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import "package:sahelp/customwidget/ButtonComponent.dart";
import "package:sahelp/customwidget/CustomDialogBox.dart";

class InsuranceTnC extends StatefulWidget {
  @override
  _InsuranceTnCState createState() => _InsuranceTnCState();
}

class _InsuranceTnCState extends State<InsuranceTnC> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.APP_HEADER_BG_GREY,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "Comming Soon...",
            style: TextStyle(fontSize: 20),
          )),
        ],
      ),
    ));
  }
}
