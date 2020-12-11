import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:percent_indicator/percent_indicator.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileBState createState() => _UserProfileBState();
}

class _UserProfileBState extends State<UserProfile> {
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
                        "_UserProfileBState",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.PRIMARY_COLOR,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircularPercentIndicator(
                            radius: 130.0,
                            lineWidth: 8.0,
                            animation: true,
                            percent: 0.7,
                            center: Container(
                              width: 105,
                              height: 105,
                              decoration: BoxDecoration(
                                  color: AppColors.APP_HEADER_BG_GREY,
                                  borderRadius: BorderRadius.circular(900)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "R 785 676\nPaid",
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                      fontSize: 14.0,
                                      color: AppColors.APP_MENU_SUBHEADER_TEXT,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            circularStrokeCap: CircularStrokeCap.square,
                            progressColor: AppColors.APP_RED,
                            backgroundWidth: 1,
                            backgroundColor: AppColors.APP_MENU_SUBHEADER_TEXT,
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: CircularPercentIndicator(
                              radius: 60.0,
                              lineWidth: 1.0,
                              percent: 1.0,
                              center: Container(
                                height: 58,
                                width: 58,
                                decoration: BoxDecoration(
                                    color: AppColors.APP_HEADER_BG_GREY,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: Text(
                                    "14",
                                    style: TextStyle(
                                      fontSize: 28,
                                      color: AppColors.APP_MENU_SUBHEADER_TEXT,
                                    ),
                                  ),
                                ),
                              ),
                              circularStrokeCap: CircularStrokeCap.square,
                              progressColor: AppColors.APP_RED,
                              backgroundWidth: 1,
                              backgroundColor:
                                  AppColors.APP_MENU_SUBHEADER_TEXT,
                              footer: Text(
                                "Instalments\n Remaining",
                                textAlign: TextAlign.center,
                                style: new TextStyle(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration:
                        BoxDecoration(color: AppColors.APP_MENU_SUBHEADER_TEXT),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "R235 180.63 outstanding",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
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
