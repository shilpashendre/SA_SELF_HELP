 
import "package:flutter/material.dart";
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/constants/RouteConstants.dart';
import "package:sahelp/customwidget/InputText.dart";
import "package:sahelp/customwidget/ButtonComponent.dart";
import "package:sahelp/customwidget/CustomDialogBox.dart";

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.APP_BG_GREY,
      body: Container(
        child: Scaffold(
            backgroundColor: AppColors.APP_BG_GREY,
            body: Stack(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 85,
                  color: AppColors.PRIMARY_COLOR,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome to ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        " SA Taxi Self Help",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 50,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                        child: Icon(
                      Icons.arrow_drop_up,
                      size: 60,
                      color: AppColors.APP_BG_GREY,
                    )),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 100.0, 0, 0),
                      child: Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.1,
                          height: MediaQuery.of(context).size.height / 1.8,
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
                                    color: AppColors.APP_HEADER_BG_GREY),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Please Login",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: AppColors.PRIMARY_COLOR,
                                      fontWeight: FontWeight.bold,
                                    ),
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
                                        hintText: "SA ID Number",
                                        svgIcon: "assets/images/ic_name.png",
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      InputText(
                                        hintText: "Contact Number",
                                        svgIcon: "assets/images/password.png",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ButtonComponent(
                                btnLabel: "LOGIN",
                                btnColor: AppColors.PRIMARY_COLOR,
                                minWidth: 90,
                                onTap: () {},
                              ),
                              SizedBox(
                                height: 10,
                                child: Divider(
                                  color: AppColors.APP_MENU_ICON,
                                  height: 10,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0, vertical: 10.0),
                                child: Text(
                                  "If you do not have an account, please register below",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: AppColors.APP_MENU_SUBHEADER_TEXT),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
                                child: SizedBox(
                                  height: 10,
                                  child: Divider(
                                    color: AppColors.APP_MENU_ICON,
                                    height: 10,
                                  ),
                                ),
                              ),
                              ButtonComponent(
                                btnLabel: "REGISTER",
                                btnColor: AppColors.APP_GREEN,
                                minWidth: 115,
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, RouteConstants.routeRegister);
                                },
                              ),
                              SizedBox(
                                height: 10,
                                child: Divider(
                                  color: AppColors.APP_MENU_ICON,
                                  height: 10,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0, vertical: 10.0),
                                child: Text(
                                  "If you are experiencing any problems logging in, please contact SA Taxi below",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: AppColors.APP_MENU_SUBHEADER_TEXT),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
                                child: SizedBox(
                                  height: 15,
                                  child: Divider(
                                    color: AppColors.APP_MENU_ICON,
                                    height: 10,
                                  ),
                                ),
                              ),
                              ButtonComponent(
                                btnLabel: "8681 829 448",
                                btnColor: AppColors.APP_MENU_SUBHEADER_TEXT,
                                minWidth: 135,
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
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/images/ic_sa_menu_icon.png",
                        fit: BoxFit.cover,
                        color: Colors.white,
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    ));
  }
}
