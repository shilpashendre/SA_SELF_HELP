import "package:flutter/material.dart";
import "package:sahelp/customwidget/ColorConstants.dart";
import "package:sahelp/customwidget/InputText.dart";
import "package:sahelp/customwidget/ButtonComponent.dart";
import "package:flutter_svg/flutter_svg.dart";

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
            body: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
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
              top: 51,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Center(
                    child: Icon(
                  Icons.arrow_drop_up,
                  size: 50,
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
                      height: MediaQuery.of(context).size.height / 1.65,
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: AppColors.APP_HEADER_BG_GREY,
                            blurRadius: 2,
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
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: [
                                  InputText(
                                    hintText: "SA ID Number",
                                    svgIcon: "assets/images/SAID.svg",
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  InputText(
                                    hintText: "Contact Number",
                                    svgIcon: "assets/images/password.svg",
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ButtonComponent(
                              btnLabel: "LOGIN",
                              btnColor: AppColors.PRIMARY_COLOR),
                          SizedBox(
                            height: 15,
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
                              btnLabel: "REGISTER",
                              btnColor: AppColors.APP_GREEN),
                          SizedBox(
                            height: 15,
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
                              btnColor: AppColors.APP_MENU_SUBHEADER_TEXT),
                        ],
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  "assets/images/ic_sa_menu_icon.png",
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ],
        )),
      ),
    ));
  }
}
