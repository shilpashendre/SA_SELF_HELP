import "package:flutter/material.dart";
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/constants/Utility.dart';
import 'package:sahelp/constants/device_helper.dart';
import 'package:sahelp/customwidget/CustomErrorWidget.dart';
import 'package:sahelp/customwidget/HeaderTabInfo.dart';
import 'package:sahelp/dialogs/UpdateProfileDialog.dart';
import 'package:sahelp/dialogs/UpdateProfileMSGDialog.dart';
import "package:sahelp/customwidget/ProfileRowWidget.dart";

class PersonalDetails extends StatefulWidget {
  @override
  _PersonalDetailsState createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  String dealNo = "Click To Select";
  String strNote = "Click To";

  var response;
  bool showLoader = true;

  @override
  void initState() {
    super.initState();

    getApiResponse();
  }

  void getApiResponse() async {
    response = await Utility.postapis(
        "SProc_Mobility_GetProfileDetails", ["@IDNumber~~" + Utility.idNumber]);

    setState(() {
      response = response["NewDataSet"] != null
          ? response["NewDataSet"]["SProc_Mobility_GetProfileDetails"]
          : null;
    });

    // print(response);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.APP_HEADER_BG_GREY,
      body: response != null
          ? Column(
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
                          text: Utility.displayValue(response[""], "N/A"),
                        ),
                        ProfileRowWidget(
                            image: "ic_name.png",
                            txtValue: Utility.displayValue(
                                response["DateOfBirth"], "-"),
                            label: "Date of Birth"),
                        divider(true),
                        ProfileRowWidget(
                            image: "ic_sex.png",
                            txtValue:
                                Utility.displayValue(response["Gender"], "-"),
                            label: "Gender"),
                        divider(true),
                        ProfileRowWidget(
                            image: "email_profile.png",
                            txtValue:
                                Utility.displayValue(response["Email"], "-"),
                            label: "Email"),
                        divider(false),
                        HeaderTabInfo(
                          txtColor: AppColors.APP_HEADER_BLUE,
                          text: "Primary Contact",
                        ),
                        ProfileRowWidget(
                            image: "ic_personal_no.png",
                            txtValue:
                                Utility.displayValue(response["CellTel"], "-"),
                            label: "Mobile"),
                        divider(true),
                        ProfileRowWidget(
                            image: "tel_number.png",
                            txtValue:
                                Utility.displayValue(response["HomeTel"], "-"),
                            label: "Home"),
                        divider(true),
                        ProfileRowWidget(
                            image: "ic_work_no2.png",
                            txtValue:
                                Utility.displayValue(response["WorkTel"], "-"),
                            label: "Work"),
                        divider(false),
                        HeaderTabInfo(
                          txtColor: AppColors.APP_HEADER_BLUE,
                          text: "Primary Address",
                        ),
                        ProfileRowWidget(
                            image: "address.png",
                            txtValue: Utility.displayValue(
                                response["ResidentialAddress"], "-"),
                            label: "Mobile"),
                        divider(true),
                        ProfileRowWidget(
                            image: "ic_postal_address2.png",
                            txtValue: Utility.displayValue(
                                response["PostalAddress"], "-"),
                            label: "Work"),
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
            )
          : CustomErrorWidget(
              showLoader: showLoader,
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
                                    "Please Select personal information which you want to update",
                                showExit: false);
                          })
                    }
                  else
                    {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return UpdateProfileMSGDialog(
                                dialogMsg:
                                    "Your request submitted successfully.",
                                showExit: false);
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
