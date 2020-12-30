import "package:flutter/material.dart";
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/constants/device_helper.dart';
import "package:sahelp/customwidget/ButtonComponent.dart";
import 'package:sahelp/customwidget/HeaderTabInfo.dart';
import 'package:sahelp/pages/survey/surveypage2.dart';

class SurveyPage1 extends StatefulWidget {
  static const String routeName = '/surveypage1';
  @override
  _SurveyPage1State createState() => _SurveyPage1State();
}

class _SurveyPage1State extends State<SurveyPage1> {
  String headerTitle = "Application Effectiveness";
  int selectedCBIndex = 0;
  final likeController = TextEditingController();
  final dislikeController = TextEditingController();
  bool isLikeEmpty = false;
  bool isDislikeEmpty = false;
  String errMsg = "Please enter feedback";
  bool resolveQuerySwitch = false;
  bool comfortableSwitch = false;
  bool happySwitch = false;
  bool agreeSwitch = false;

  @override
  void dispose() {
    dislikeController.dispose();
    likeController.dispose();
    super.dispose();
  }

  setSwitchValue(String value) {
    switch (value) {
      case "Resolve":
        return setState(() {
          resolveQuerySwitch = !resolveQuerySwitch;
        });
      case "Comfortable":
        return setState(() {
          comfortableSwitch = !comfortableSwitch;
        });
      case "Happy":
        // no class
        return setState(() {
          happySwitch = !happySwitch;
        });
      case "Agree":
        return setState(() {
          agreeSwitch = !agreeSwitch;
        });
      default:
        return;
    }
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
          "RETURN TO APP",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                          headerTitle,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: AppColors.APP_HEADER_BLUE,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 18, right: 18, top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            quesAns(
                                "1. What do you like about the application?",
                                likeController),
                            SizedBox(
                              height: DeviceHelper.dh30,
                            ),
                            quesAns(
                                "1. What do you not like about the application?",
                                dislikeController),
                            SizedBox(
                              height: DeviceHelper.dh15,
                            ),
                            switchContainer(
                                "Does the application help you resolve your queries?",
                                resolveQuerySwitch,
                                "Resolve"),
                            switchContainer(
                                "Are you comfortable with using the application for resolving your issues?",
                                comfortableSwitch,
                                "Comfortable"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: DeviceHelper.dh15,
                    ),
                    HeaderTabInfo(
                      text: "Convenience / Cost",
                      txtColor: AppColors.APP_HEADER_BLUE,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 18, right: 18, top: 10),
                      child: Column(children: <Widget>[
                        switchContainer(
                            "Are you happy to pay / use your own data for this self help application?",
                            happySwitch,
                            "Happy"),
                        switchContainer(
                            "Would you agree that the application saves you money in terms of making a phone call or driving to a branch?",
                            agreeSwitch,
                            "Agree"),
                        SizedBox(
                          height: DeviceHelper.dh10,
                        ),
                        Divider(
                          color: AppColors.DIVIDER,
                        )
                      ]),
                    ),
                    buttonContainer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Padding switchContainer(String ques, bool value, String label) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Text(ques),
          ),
          Expanded(
              flex: 1,
              child: Transform.scale(
                  scale: 0.8,
                  child: Switch(
                      value: value,
                      onChanged: (bool value) {
                        setSwitchValue(label);
                      })))
        ],
      ),
    );
  }

  Column quesAns(String ques, TextEditingController _contoller) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(ques),
        SizedBox(
          height: DeviceHelper.dh15,
        ),
        TextField(
          maxLength: 13,
          cursorColor: Colors.black, 
          controller: _contoller,
          decoration: InputDecoration(
              counterText: "",
              isDense: true,
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.APP_MENU_ICON)),
              focusedBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: AppColors.APP_MENU_ICON)),
              contentPadding:
                  EdgeInsets.only(left: 0, bottom: 0, top: 15, right: 15),
              hintText: "Enter Your Feedback",
              errorText: isLikeEmpty ? errMsg : null,
              errorStyle: TextStyle(fontSize: 11),
              hintStyle:
                  TextStyle(color: AppColors.APP_MENU_ICON, fontSize: 14)),
        )
      ],
    );
  }

  Row buttonContainer() {
    return Row(
      children: [
        ButtonComponent(
          btnLabel: "NEXT",
          btnColor: AppColors.PRIMARY_COLOR,
          onTap: () {
            // Navigator.pushNamed(context, AppNavigation.routeName);
            if (likeController.text.toString().length == 0) {
              setState(() {
                isLikeEmpty = !isLikeEmpty;
              });
            }
            if (dislikeController.text.toString().length == 0) {
              setState(() {
                isDislikeEmpty = !isDislikeEmpty;
              });
            }
            if (likeController.text.toString().length != 0 &&
                dislikeController.text.toString().length != 0) {
              Navigator.popAndPushNamed(context, SurveyPage2.routeName);
             
            }
          },
        ),
      ],
    );
  }
}
