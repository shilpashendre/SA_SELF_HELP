import "package:flutter/material.dart";
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/constants/device_helper.dart';
import 'package:sahelp/customwidget/HeaderTabInfo.dart';
import 'package:sahelp/dialogs/UpdateProfileDialog.dart';
import 'package:sahelp/dialogs/UpdateProfileMSGDialog.dart';

class PersonalDetails extends StatefulWidget {
  @override
  _PersonalDetailsState createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  String dealNo = "Click To Select";
  String strNote = "Click To";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.APP_HEADER_BG_GREY,
      body: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Center(
              child: Image.asset(
            "assets/images/user_profile_icon.png",
            height: 100,
            width: 100,
          )),
          Center(
            child: Container(
              width: DeviceHelper.fullWidth / 1.1,
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 0,
                  )
                ],
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  HeaderTabInfo(
                      txtColor: AppColors.APP_HEADER_BLUE,
                      text: "Mr Lawrence Thabathille Wen",
                      isBold: true),
                  description("ic_name.png", "12 June 1975", "Date of Birth"),
                  divider(true),
                  description("ic_sex.png", "Male", "Gender"),
                  divider(true),
                  description("email_profile.png", "-", "Email"),
                  divider(false),
                  HeaderTabInfo(
                      txtColor: AppColors.APP_HEADER_BLUE,
                      text: "Primary Contact",
                      isBold: true),
                  description(
                      "ic_personal_no.png", "+27 60 560 7288", "Mobile"),
                  divider(true),
                  description("tel_number.png", "(021) 949 6581", "Home"),
                  divider(true),
                  description("ic_work_no2.png", "(021) 949 6581", "Work"),
                  divider(false),
                  HeaderTabInfo(
                      txtColor: AppColors.APP_HEADER_BLUE,
                      text: "Primary Address",
                      isBold: true),
                  description(
                      "address.png",
                      "42 THAFENI STREET, MFULENI EXT 4, MFULENI EXT 4, 7",
                      "Mobile"),
                  divider(true),
                  description(
                      "ic_postal_address2.png",
                      "42 THAFENI STREET, MFULENI EXT 4, MFULENI EXT 4, 7",
                      "Work"),
                  Divider(
                    indent: 15,
                    endIndent: 15,
                    color: AppColors.DIVIDER,
                  ),
                  SizedBox(
                    height: DeviceHelper.dh15,
                  ),
                  btnGenratereport(),
                  SizedBox(
                    height: DeviceHelper.dh15,
                  ),
                  SizedBox(
                    height: DeviceHelper.dh15,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }

  Widget divider(isColor) {
    return Divider(
      indent: 70,
      endIndent: 10,
      color: isColor ? AppColors.DIVIDER : Colors.white,
    );
  }

  Widget description(image, txtValue, label) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
      width: DeviceHelper.fullWidth,
      child: Column(
        children: [
          Container(
            width: DeviceHelper.fullWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    "assets/images/" + image,
                    height: DeviceHelper.deviceSize.width * 0.04,
                    width: DeviceHelper.deviceSize.width * 0.04,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    width: DeviceHelper.fullWidth,
                    child: Stack(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          txtValue,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 13,
                              color: AppColors.APP_MENU_SUBHEADER_TEXT),
                        ),
                      ),
                    ]),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Text(label,
                        textAlign: TextAlign.right,
                        style:
                            TextStyle(fontSize: 13, color: AppColors.DIVIDER)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
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
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return UpdateProfileDialog();
                }).then((value) => {
                  if (value == "fail")
                    {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return UpdateProfileMSGDialog(
                                dialogMsg:
                                    "Please Select personal information which you want to update");
                          })
                    }
                  else
                    {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return UpdateProfileMSGDialog(
                                dialogMsg:
                                    "Your request submitted successfully.");
                          })
                    }
                });
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 27, vertical: 5),
            child: Text(
              "UPDATE DETAILS",
              style: TextStyle(color: Colors.white, fontFamily: "Roboto"),
            ),
          ),
        ),
      ),
    );
  }
}
