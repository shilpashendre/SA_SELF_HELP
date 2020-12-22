import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';

class DealNoDialog extends StatefulWidget {
  @override
  _DealNoDialogState createState() => _DealNoDialogState();
}

enum DealNo { selectedValue, unSelectedValue }

class _DealNoDialogState extends State<DealNoDialog> {
  String inValidLoginDialogMsg = "063365:065978";
  DealNo value = DealNo.unSelectedValue;
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
          padding: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
          margin: EdgeInsets.all(15),
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
                width: MediaQuery.of(context).size.width,
                height: 60,
                color: AppColors.PRIMARY_COLOR,
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.start, //change here don't //worked
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 0),
                      child: Text(
                        "Select Deal Number",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 20, right: 7),
                child: Row(
                  children: [
                    Radio(
                        value: DealNo.unSelectedValue,
                        groupValue: value,
                        onChanged: (DealNo val) {
                          setState(() {
                            value = val;
                          });
                        }),
                    Text(
                      inValidLoginDialogMsg,
                      style: TextStyle(
                          fontSize: 13,
                          color: AppColors.APP_MENU_SUBHEADER_TEXT),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                  width: 1,
                                  color: AppColors.APP_GREY_DIVIDER))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FlatButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                "CANCEL",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: AppColors.PRIMARY_COLOR),
                              )),
                          FlatButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                "OK",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: AppColors.PRIMARY_COLOR),
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
