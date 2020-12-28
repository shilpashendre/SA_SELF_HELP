import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/constants/device_helper.dart';
import 'package:sahelp/customwidget/HeaderTabInfo.dart';
import 'package:sahelp/customwidget/ProfileRowWidget.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  Widget divider(isColor) {
    return Divider(
      indent: 70,
      endIndent: 10,
      color: isColor ? AppColors.DIVIDER : Colors.white,
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
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      HeaderTabInfo(
                          txtColor: AppColors.APP_HEADER_BLUE,
                          text: "Mr Lawrence Thabathille Wen",
                          isBold: true),
                      ProfileRowWidget(
                          image: "ic_name.png",
                          txtValue: "12 June 1975",
                          label: "Date of Birth"),
                      divider(true),
                      ProfileRowWidget(
                          image: "ic_sex.png",
                          txtValue: "Male",
                          label: "Gender"),
                      divider(true),
                      ProfileRowWidget(
                          image: "email_profile.png",
                          txtValue: "-",
                          label: "Email"),
                      divider(false),
                    ],
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      HeaderTabInfo(
                          txtColor: AppColors.APP_HEADER_BLUE,
                          text: "Mr Lawrence Thabathille Wen",
                          isBold: true),
                      ProfileRowWidget(
                          image: "ic_name.png",
                          txtValue: "12 June 1975",
                          label: "Date of Birth"),
                      divider(true),
                      ProfileRowWidget(
                          image: "ic_sex.png",
                          txtValue: "Male",
                          label: "Gender"),
                      divider(true),
                      ProfileRowWidget(
                          image: "email_profile.png",
                          txtValue: "-",
                          label: "Email"),
                      divider(false),
                    ],
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
