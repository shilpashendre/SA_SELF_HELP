import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/pages/survey/surveypage1.dart';

class SurveyDialog extends StatefulWidget {
  @override
  _SurveyDialogtState createState() => _SurveyDialogtState();
}

enum SurveyOption { complete_now, complete_later, not_interested }

class _SurveyDialogtState extends State<SurveyDialog> {
  String callBackMsg =
      "Thank you for using the SA Taxi Self Help application. We're conducting research on the benefits this application has to offer. We'd love to hear from you about what you use it for and what query types you want to see built. This will help us make improvements to the existing tool and priorities new features. The survey should only take 5 minutes.";
  String _radioValue = "Complete Survey Now";

  void _handleRadioValueChange(String value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case "Complete Survey Now":
          break;
        case "Complete Survey Later":
          break;
        case "Not Interested":
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[800],
                    offset: Offset(0, 10),
                    blurRadius: 10),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                height: 40,
                color: AppColors.PRIMARY_COLOR,
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.start, //change here don't //worked
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "In App Survey",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  callBackMsg,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: AppColors.APP_MENU_SUBHEADER_TEXT),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Transform.scale(
                        scale: 0.7,
                        child: Radio(
                            activeColor: Colors.grey[400],
                            value: "Complete Survey Now",
                            groupValue: _radioValue,
                            onChanged: _handleRadioValueChange),
                      ),
                      radioLabel(
                        'Complete Survey Now',
                      ),
                    ],
                  ),
                  Divider(
                    color: AppColors.DIVIDER,
                    indent: 15,
                    endIndent: 15,
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 0.7,
                        child: Radio(
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            activeColor: Colors.grey[400],
                            value: 'Complete Survey Later',
                            groupValue: _radioValue,
                            onChanged: _handleRadioValueChange),
                      ),
                      radioLabel('Complete Survey Later'),
                    ],
                  ),
                  Divider(
                    color: AppColors.DIVIDER,
                    indent: 15,
                    endIndent: 15,
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 0.7,
                        child: Radio(
                            activeColor: Colors.grey[400],
                            value: 'Not Interested',
                            groupValue: _radioValue,
                            onChanged: _handleRadioValueChange),
                      ),
                      radioLabel('Not Interested'),
                    ],
                  ),
                  Divider(
                    color: AppColors.DIVIDER,
                    indent: 15,
                    endIndent: 15,
                  ),
                ],
              ),
              button(context),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ],
    );
  }

  Text radioLabel(text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Colors.grey[300],
      ),
    );
  }

  Row button(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(7)),
              color: AppColors.PRIMARY_COLOR,
            ),
            child: InkWell(
              onTap: () {
                print(_radioValue);
                if (_radioValue == "Complete Survey Now") {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, SurveyPage1.routeName);
                   
                } else if (_radioValue == "") {
                  Navigator.of(context).pop();
                } else {
                  Navigator.of(context).pop();
                }
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 17, vertical: 7),
                child: Text(
                  "DONE",
                  style: TextStyle(color: Colors.white, fontFamily: "Roboto"),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
