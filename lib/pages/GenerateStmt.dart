import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/constants/device_helper.dart';
import 'package:sahelp/dialogs/CustomDialogBox.dart';
import 'package:sahelp/dialogs/DealNoDialog.dart';

class GenerateStmt extends StatefulWidget {
  @override
  _GenerateStmtState createState() => _GenerateStmtState();
}

class _GenerateStmtState extends State<GenerateStmt> {
  String dealNo = "Click To Select";

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
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Statement Report",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.APP_HEADER_BLUE,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
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
                                      width: 125,
                                      height: 20,
                                      child: Text(
                                        "DD/MM/YYYY",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: AppColors.DIVIDER),
                                      ),
                                    ),
                                    Container(
                                        height: MediaQuery.of(context)
                                                .copyWith()
                                                .size
                                                .height /
                                            3,
                                        color: Colors.amberAccent,
                                        child: CupertinoDatePicker(
                                            initialDateTime: DateTime.now(),
                                            onDateTimeChanged:
                                                (DateTime newdate) {
                                              print(newdate);
                                            },
                                            use24hFormat: true,
                                            maximumDate:
                                                new DateTime(2018, 12, 30),
                                            minimumYear: 2010,
                                            maximumYear: 2030,
                                            mode:
                                                CupertinoDatePickerMode.date)),
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
                  )
                ],
              ),
            ),
          ),
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
