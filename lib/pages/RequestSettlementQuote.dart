import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/constants/device_helper.dart';
import 'package:sahelp/dialogs/DealNoDialog.dart';
import 'package:sahelp/customwidget/HeaderTabInfo.dart';

class RequestSettlementQuote extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RequestSettlementQuoteState();
  }
}

class _RequestSettlementQuoteState extends State<RequestSettlementQuote> {
  String dealNo = "Click To Select";
  String saIDNo = "756125555850";
  DateTime now = new DateTime.now();
  String currentDate;
  String radioLabel = "063365:065978";
  String yesSelected = "yesSelected";
  String noSelected = "noUnSelected";
  @override
  void initState() {
    super.initState();
    DateTime date = new DateTime(now.year, now.month, now.day);
    currentDate = date.toString().substring(8, 10) +
        "/" +
        date.toString().substring(5, 7) +
        "/" +
        date.toString().substring(0, 3);
  }

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
                  HeaderTabInfo(
                      txtColor: AppColors.APP_HEADER_BLUE,
                      text: "MR LAWRENCE THABATHILLE WEM",
                      isBold: true),
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
                                  "assets/images/down_arow.png",
                                  height: DeviceHelper.deviceSize.width * 0.04,
                                  width: DeviceHelper.deviceSize.width * 0.04,
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  child: Stack(children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 0, 0),
                                      child: Text(
                                        "Early Settlement",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.black),
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Text("Settlement Type",
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
                                  "assets/images/continue_cartrack.png",
                                  height: DeviceHelper.deviceSize.width * 0.04,
                                  width: DeviceHelper.deviceSize.width * 0.04,
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Stack(children: [
                                    Row(
                                      children: [
                                        Radio(
                                          activeColor: AppColors.APP_MENU_SUBHEADER_TEXT,
                                          value: yesSelected,
                                          groupValue: "yesSelected",
                                          onChanged: (value) {
                                            setState(() {
                                              yesSelected = "yesSelected";
                                              noSelected = "noUnSelected";
                                            });
                                          },
                                        ),
                                        Text("Yes"),
                                        Radio(
                                          activeColor: AppColors.APP_MENU_SUBHEADER_TEXT,
                                          value: noSelected,
                                          groupValue: "noSelected",
                                          onChanged: (value) {
                                            setState(() {
                                              noSelected = "noSelected";
                                              yesSelected = "yesUnSelected";
                                            });
                                          },
                                        ),
                                        Text("No"),
                                      ],
                                    ),
                                  ]),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Text("Continue Car Track",
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
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  child: Image.asset(
                                    "assets/images/ic_date_selected.png",
                                    height:
                                        DeviceHelper.deviceSize.width * 0.04,
                                    width: DeviceHelper.deviceSize.width * 0.04,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Stack(children: [
                                    Text(
                                      currentDate + "- 25/12/2020",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.black),
                                    ),
                                  ]),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Text("Date of Request",
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
                      ],
                    ),
                  ),
                  btnGenratereport(),
                  SizedBox(
                    height: DeviceHelper.dh15,
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
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          color: AppColors.APP_HEADER_BLUE,
        ),
        child: InkWell(
          onTap: () {
            // showDialog(
            //     context: context,
            //     builder: (BuildContext context) {
            //       return CustomDialogBox();
            //     });
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 27, vertical: 5),
            child: Text(
              "REQUEST DEVICE",
              style: TextStyle(color: Colors.white, fontFamily: "Roboto"),
            ),
          ),
        ),
      ),
    );
  }
}
