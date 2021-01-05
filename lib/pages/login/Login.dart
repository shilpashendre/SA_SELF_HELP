import 'dart:io';

import "package:flutter/material.dart";
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/constants/device_helper.dart';
import "package:sahelp/customwidget/ButtonComponent.dart";
import 'package:sahelp/dialogs/CustomDialogBox.dart';
import 'package:sahelp/dialogs/InavlidLoginInputDialog.dart';
import 'package:sahelp/customwidget/InputText.dart';
import 'package:sahelp/dialogs/UpdateProfileMSGDialog.dart';
import 'package:sahelp/navigationmenu/AppNavigation.dart';
import 'package:sahelp/pages/login/Register.dart';

class Login extends StatefulWidget {
  static const String routeName = '/login';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isSAValid = false;
  bool isPasswordValid = false;
  final passwordController = TextEditingController();
  final saIdController = TextEditingController();

  @override
  void dispose() {
    saIdController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<bool> _onWillPop() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return UpdateProfileMSGDialog(
            dialogMsg: "Are you sure, you want to exit?",
            showExit: true,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: AppColors.APP_HEADER_BG_GREY,
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Scaffold(
                backgroundColor: AppColors.APP_BG_LOGIN,
                body: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: DeviceHelper.dh76,
                      color: AppColors.PRIMARY_COLOR,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Welcome to ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontFamily: "Roboto"),
                          ),
                          Text(
                            " SA Taxi Self Help",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Roboto"),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child:
                          Center(child: Image.asset("assets/images/capp.png")),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15.0, 0, 0),
                            child: Center(
                              child: Container(
                                width: DeviceHelper.loginContainerWidth,
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
                                      decoration: BoxDecoration(
                                          color: AppColors.APP_MAIN_HEADER),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          "Please Login",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: AppColors.APP_HEADER_BLUE,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsetsDirectional.only(
                                          start: 1.0, end: 1.0),
                                      width: MediaQuery.of(context).size.width,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 18, right: 18),
                                        child: Column(
                                          children: [
                                            InputText(
                                              myController: saIdController,
                                              hintText: "SA ID Number",
                                              svgIcon:
                                                  "assets/images/ic_name.png",
                                              errMsg:
                                                  "Please enter SA ID Number",
                                              isobscureText: false,
                                              isErr: isSAValid,
                                            ),
                                            SizedBox(
                                              height: 0,
                                            ),
                                            InputText(
                                              myController: passwordController,
                                              hintText: "Contact Number",
                                              svgIcon:
                                                  "assets/images/password.png",
                                              errMsg:
                                                  "Please enter Contact Number",
                                              isobscureText: true,
                                              isErr: isPasswordValid,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: DeviceHelper.dh10,
                                    ),
                                    ButtonComponent(
                                      btnLabel: "LOGIN",
                                      btnColor: AppColors.BUTTON_TXT_COLOR,
                                      onTap: () {
                                        if (saIdController.text == "1") {
                                          showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return InavlidLoginInputDialog();
                                              });
                                        }

                                        // check valid inputs
                                        // if (saIdController.text.length < 13) {
                                        //   setState(() {
                                        //     isSAValid = true;
                                        //   });
                                        // } else {
                                        //   setState(() {
                                        //     isSAValid = false;
                                        //   });
                                        // }
                                        // if (passwordController.text.length <
                                        //     13) {
                                        //   setState(() {
                                        //     isPasswordValid = true;
                                        //   });
                                        // } else {
                                        //   setState(() {
                                        //     isPasswordValid = false;
                                        //   });
                                        // }

                                        // if (!isSAValid && !isPasswordValid) {
                                        //   Navigator.pushNamed(
                                        //       context, AppNavigation.routeName);
                                        // }
                                        Navigator.pushNamed(
                                            context, AppNavigation.routeName);
                                      },
                                    ),
                                    SizedBox(
                                      height: DeviceHelper.dh10,
                                      child: Divider(
                                        color: AppColors.DIVIDER,
                                        height: DeviceHelper.dh10,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0, vertical: 10.0),
                                      child: Text(
                                        "If you do not have an account, please register below",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.CREATEACCOUNTMSG),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15.0, 0, 15.0, 0),
                                      child: SizedBox(
                                        height: DeviceHelper.dh10,
                                        child: Divider(
                                          color: AppColors.DIVIDER,
                                          height: DeviceHelper.dh10,
                                        ),
                                      ),
                                    ),
                                    ButtonComponent(
                                      btnLabel: "REGISTER",
                                      btnColor: AppColors.BTN_GREEN,
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, Register.routeName);
                                      },
                                    ),
                                    SizedBox(
                                      height: DeviceHelper.dh10,
                                      child: Divider(
                                        color: AppColors.DIVIDER,
                                        height: DeviceHelper.dh10,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0, vertical: 10.0),
                                      child: Text(
                                        "If you are experiencing any problems logging in, please contact SA Taxi below",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.CREATEACCOUNTMSG),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15.0, 0, 15.0, 0),
                                      child: SizedBox(
                                        height: DeviceHelper.dh15,
                                        child: Divider(
                                          color: AppColors.DIVIDER,
                                          height: DeviceHelper.dh10,
                                        ),
                                      ),
                                    ),
                                    ButtonComponent(
                                      btnLabel: "8681 829 448",
                                      btnColor: AppColors.CREATEACCOUNTMSG,
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return CustomDialogBox(
                                                title: "Custom Dialog Demo",
                                                descriptions:
                                                    "Hii all this is a custom dialog in flutter and  you will be use in your flutter applications",
                                                text: "Yes",
                                              );
                                            });
                                      },
                                    ),
                                    SizedBox(
                                      height: DeviceHelper.dh5,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/images/sa_taxi_login_logo_white.png",
                              fit: BoxFit.cover,
                              color: Colors.white,
                              width: 120,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        ),
      )),
    );
  }

  Widget createInputText(hintText, svgIcon, errMsg, isobscureText, isErr) {
    return InputText(
      hintText: hintText,
      svgIcon: svgIcon,
      errMsg: errMsg,
      isobscureText: isobscureText,
      isErr: isErr,
    );
  }
}
