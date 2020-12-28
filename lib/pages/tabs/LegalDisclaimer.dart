import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/constants/device_helper.dart';
import 'package:sahelp/customwidget/LegalDisclaimerWidget.dart';

class LegalDisclaimer extends StatefulWidget {
  @override
  _LegalDisclaimerState createState() => _LegalDisclaimerState();
}

class _LegalDisclaimerState extends State<LegalDisclaimer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.APP_HEADER_BG_GREY,
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              width: DeviceHelper.fullWidth / 1.1,
              height: DeviceHelper.fullHeight,
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
                  LegalDisclaimerWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
