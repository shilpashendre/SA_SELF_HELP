import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/constants/device_helper.dart';
import "package:sahelp/customwidget/CustomDialogBox.dart";
import 'package:sahelp/customwidget/DealNoDialog.dart';

class PassangerLiabilityDisc extends StatefulWidget {
  final String strNote =
      "*Any changes made to the policy within past 24 hours will not be reflected in your generated insurance document";
  @override
  _PassangerLiabilityDiscState createState() => _PassangerLiabilityDiscState();
}

class _PassangerLiabilityDiscState extends State<PassangerLiabilityDisc> {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration:
                        BoxDecoration(color: AppColors.APP_HEADER_BG_GREY),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Passanger Liability Disc",
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
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                "assets/images/ic_deal_no.png",
                                height: DeviceHelper.deviceSize.width * 0.04,
                                width: DeviceHelper.deviceSize.width * 0.04,
                              ),
                              GestureDetector(
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
                                  child: Stack(children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(7, 0, 0, 0),
                                      child: Text(
                                        dealNo,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: AppColors.DIVIDER),
                                      ),
                                    ),
                                    Image.asset(
                                        "assets/images/bg_clicktoselect.png")
                                  ]),
                                ),
                              ),
                              Text("Deal No",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontSize: 13, color: AppColors.DIVIDER)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                          child: Divider(
                            color: AppColors.DIVIDER,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Image.asset(
                                  "assets/images/ic_deal_details.png",
                                  height: DeviceHelper.deviceSize.width * 0.04,
                                  width: DeviceHelper.deviceSize.width * 0.04,
                                ),
                              ),
                              Container(
                                child: Stack(children: [
                                  Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          30, 0, 0, 0),
                                      child: Container(
                                          width: 125,
                                          height: 20,
                                          child: TextField(
                                            cursorColor: Colors.black,
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                                isDense: true,
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                            width: 0.5,
                                                            color: AppColors
                                                                .APP_MENU_ICON)),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  borderSide: BorderSide(
                                                      color: AppColors
                                                          .APP_MENU_ICON),
                                                ),
                                                hintText: "Enter Registration",
                                                hintStyle: TextStyle(
                                                    color:
                                                        AppColors.APP_MENU_ICON,
                                                    fontSize: 13)),
                                          )))
                                ]),
                              ),
                              Container(
                                width: 100,
                                child: Text("Vehicle Reg No",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: AppColors.DIVIDER)),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          indent: 97,
                          color: AppColors.DIVIDER,
                        ),
                        Divider(
                          color: AppColors.DIVIDER,
                        ),
                      ],
                    ),
                  ),
                  btnGenratereport(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 7),
                    child: Text(
                      widget.strNote,
                      style: TextStyle(color: AppColors.BTN_GREEN),
                    ),
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
            padding: EdgeInsets.symmetric(horizontal: 27, vertical: 5),
            child: Text(
              "GENERATE REPORT",
              style: TextStyle(color: Colors.white, fontFamily: "Roboto"),
            ),
          ),
        ),
      ),
    );
  }
}
