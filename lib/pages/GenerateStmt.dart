import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/constants/device_helper.dart';
import 'package:sahelp/customwidget/HeaderTabInfo.dart';
import 'package:sahelp/dialogs/CustomDialogBox.dart';
import 'package:sahelp/dialogs/DealNoDialog.dart';
// import "package:flutter/cupertino.dart";

class GenerateStmt extends StatefulWidget {
  @override
  _GenerateStmtState createState() => _GenerateStmtState();
}

class _GenerateStmtState extends State<GenerateStmt> {
  String dealNo = "Click To Select";
  DateTime currentDate = DateTime.now();
  String datefrmt = 'DD/MM/YYYY';
  String selectedDate = '';
  bool showDatepicker = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.APP_HEADER_BG_GREY,
      body: Column(
        children: [
          Center(
            child: Container(
              width: DeviceHelper.fullWidth / 1.1,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      width: DeviceHelper.fullWidth,
                      decoration:
                          BoxDecoration(color: AppColors.APP_HEADER_BG_GREY),
                      child: HeaderTabInfo(
                      
                        text: "Statement Report",
                        txtColor: AppColors.APP_HEADER_BLUE,
                      )),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: DeviceHelper.fullWidth,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Image.asset(
                                  "assets/images/ic_deal_no.png",
                                  height: DeviceHelper.deviceSize.width * 0.04,
                                  width: DeviceHelper.deviceSize.width * 0.04,
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return DealNoDialog();
                                      },
                                    ).then((value) {
                                      if (value != null) {
                                        setState(() {
                                          dealNo = value;
                                        });
                                      }
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(left: 20),
                                    child: Stack(children: [
                                      Text(
                                        dealNo,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: AppColors.DIVIDER),
                                      ),
                                      Image.asset(
                                          "assets/images/bg_clicktoselect.png")
                                    ]),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Text("Deal No",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: AppColors.DIVIDER)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          indent: 70,
                          color: AppColors.DIVIDER,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Image.asset(
                                  "assets/images/date_of_request_blue.png",
                                  height: DeviceHelper.deviceSize.width * 0.04,
                                  width: DeviceHelper.deviceSize.width * 0.04,
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Stack(children: [
                                    Container(
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            showDatepicker = !showDatepicker;
                                          });
                                        },
                                        child: Text(
                                          datefrmt,
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: AppColors.DIVIDER),
                                        ),
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Text("Start Date",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: AppColors.DIVIDER)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          indent: 70,
                          color: AppColors.DIVIDER,
                        ),
                        Divider(
                          color: AppColors.DIVIDER,
                        ),
                      ],
                    ),
                  ),
                  btnGenratereport(),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
          showDatepicker
              ? Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        color: Colors.white,
                        child: Column(children: <Widget>[
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                RaisedButton(
                                  onPressed: () {},
                                  color: Colors.white,
                                  elevation: 0,
                                  child: Text(
                                    "CANCEL",
                                    style: TextStyle(
                                        color: AppColors.APP_HEADER_BLUE),
                                  ),
                                ),
                                RaisedButton(
                                  onPressed: () {
                                    setState(() {
                                      datefrmt = selectedDate;
                                      showDatepicker = false;
                                    });
                                  },
                                  color: Colors.white,
                                  elevation: 0,
                                  child: Text(
                                    "DONE",
                                    style: TextStyle(
                                        color: AppColors.APP_HEADER_BLUE),
                                  ),
                                )
                              ]),
                          SizedBox(
                            height: 200,
                            child: CupertinoDatePicker(
                              maximumDate: DateTime.now(),
                              initialDateTime: currentDate,
                              mode: CupertinoDatePickerMode.date,
                              onDateTimeChanged: (date) {
                                // print(date);
                                selectedDate =
                                    date.toString().substring(8, 10) +
                                        "/" +
                                        date.toString().substring(5, 7) +
                                        "/" +
                                        date.toString().substring(0, 3);

                                print(selectedDate);
                              },
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ]),
                      )
                    ],
                  ),
                )
              : Container(),
        ],
      ),
    ));
  }

  Widget btnGenratereport() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          color: AppColors.APP_HEADER_BLUE,
        ),
        child: InkWell(
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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text(
              "GENERATE STATEMENT",
              style: TextStyle(color: Colors.white, fontFamily: "Roboto"),
            ),
          ),
        ),
      ),
    );
  }
}
