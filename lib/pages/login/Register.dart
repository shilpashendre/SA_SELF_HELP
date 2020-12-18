import "package:flutter/material.dart";
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/constants/Validations.dart';
import "package:sahelp/customwidget/InputText.dart";
import "package:sahelp/customwidget/ButtonComponent.dart";
import "package:sahelp/customwidget/RegisterConfirmDialog.dart";
import 'package:sahelp/navigationmenu/AppNavigation.dart';

class Register extends StatefulWidget {
  static const String routeName = '/register';
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool isSAValid = false;
  bool isEmailValid = false;
  final emailController = TextEditingController();
  final saIdController = TextEditingController();

  Widget emailInput() {
    return TextField(
      cursorColor: Colors.black,
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      decoration: InputDecoration(
          counterText: "",
          isDense: true,
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.APP_MENU_ICON)),
          focusedBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.APP_MENU_ICON)),
          contentPadding:
              EdgeInsets.only(left: 0, bottom: 0, top: 30, right: 15),
          icon: Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 5, 0),
            child: Image.asset(
              "assets/images/email_profile.png",
              height: 20.0,
              width: 20.0,
              color: AppColors.APP_MENU_ICON,
            ),
          ),
          hintText: "Enter Email Address",
          errorText: isEmailValid ? "Please enter Email Address" : null,
          errorStyle: TextStyle(fontSize: 11),
          hintStyle: TextStyle(color: AppColors.APP_MENU_ICON, fontSize: 14)),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    saIdController.dispose();

    super.dispose();
  }

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
                          color: AppColors.APP_HEADER_BLUE,
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
                            myController: saIdController,
                            hintText: "Enter SA ID Number",
                            svgIcon: "assets/images/ic_name.png",
                            isErr: false,
                            isobscureText: false,
                            errMsg: "Please Enter SA ID Number",
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          emailInput(),
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
                      // Navigator.pushNamed(context, AppNavigation.routeName);

                      if (saIdController.text == "1") {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return RegisterConfirmDialog();
                            });
                      }

                      if (saIdController.text.length < 13) {
                        setState(() {
                          isSAValid = false;
                        });
                      } else {
                        setState(() {
                          isSAValid = true;
                        });
                      }
                      if (Validations.isEmailValid(emailController.text)) {
                        setState(() {
                          isEmailValid = false;
                        });
                      } else {
                        setState(() {
                          isEmailValid = true;
                        });
                      }

                      // Navigator.pushNamed(context, AppNavigation.routeName);
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
