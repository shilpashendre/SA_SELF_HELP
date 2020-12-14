import "package:flutter/material.dart";
import 'package:sahelp/constants/ColorConstants.dart';
import "package:sahelp/customwidget/InputText.dart";
import "package:sahelp/customwidget/ButtonComponent.dart";

class Register extends StatefulWidget {
  static const String routeName = '/register';
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.PRIMARY_COLOR,
        elevation: 0,
        leading: BackButton(
          color: Colors.white,
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "RETURN TO LOGIN",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
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
                        "New Registration",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.PRIMARY_COLOR,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18, right: 18),
                      child: Column(
                        children: [
                          InputText(
                            hintText: "Enter SA ID Number",
                            svgIcon: "assets/images/ic_name.png",
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          InputText(
                            hintText: "Enter Email Address",
                            svgIcon: "assets/images/email_profile.png",
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ButtonComponent(
                    btnLabel: "REGISTER",
                    btnColor: AppColors.PRIMARY_COLOR,
                    onTap: () {
                      Navigator.pushNamed(context, "/home");
                    },
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
