import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';

class UpdateProfileDialog extends StatefulWidget {
  @override
  _UpdateProfileDialogState createState() => _UpdateProfileDialogState();
}

class _UpdateProfileDialogState extends State<UpdateProfileDialog> {
  bool isCNChecked = false;
  bool isRAChecked = false;
  bool isPostChecked = false;
  bool isEmailChecked = false;

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
    return Container(
      padding: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey[800], offset: Offset(0, 10), blurRadius: 10),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0),
                  child: Text(
                    "Update Profile",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Select below personal details which you want to update",
                    style: TextStyle(color: AppColors.APP_MENU_SUBHEADER_TEXT),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.APP_MENU_SUBHEADER_TEXT,
                                    width: 0.5),
                              ),
                              width: 15,
                              height: 15,
                              child: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor: AppColors.DIVIDER,
                                ),
                                child: Checkbox(
                                  checkColor: AppColors.APP_MENU_SUBHEADER_TEXT,
                                  activeColor: Colors.transparent,
                                  value: this.isCNChecked,
                                  onChanged: (bool value) {
                                    setState(() {
                                      isCNChecked = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text("Contact Number"),
                          ),
                        ],
                      ),
                    ),
                    customDivider(),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.APP_MENU_SUBHEADER_TEXT,
                                    width: 0.5),
                              ),
                              width: 15,
                              height: 15,
                              child: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor: AppColors.DIVIDER,
                                ),
                                child: Checkbox(
                                  checkColor: AppColors.APP_MENU_SUBHEADER_TEXT,
                                  activeColor: Colors.transparent,
                                  value: this.isRAChecked,
                                  onChanged: (bool value) {
                                    setState(() {
                                      isRAChecked = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text("Residential Address"),
                          ),
                        ],
                      ),
                    ),
                    customDivider(),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.APP_MENU_SUBHEADER_TEXT,
                                    width: 0.5),
                              ),
                              width: 15,
                              height: 15,
                              child: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor: AppColors.DIVIDER,
                                ),
                                child: Checkbox(
                                  checkColor: AppColors.APP_MENU_SUBHEADER_TEXT,
                                  activeColor: Colors.transparent,
                                  value: this.isPostChecked,
                                  onChanged: (bool value) {
                                    setState(() {
                                      isPostChecked = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text("Post Address"),
                          ),
                        ],
                      ),
                    ),
                    customDivider(),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.APP_MENU_SUBHEADER_TEXT,
                                    width: 0.5),
                              ),
                              width: 15,
                              height: 15,
                              child: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor: AppColors.DIVIDER,
                                ),
                                child: Checkbox(
                                  checkColor: AppColors.APP_MENU_SUBHEADER_TEXT,
                                  activeColor: Colors.transparent,
                                  value: this.isEmailChecked,
                                  onChanged: (bool value) {
                                    setState(() {
                                      isEmailChecked = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text("Email"),
                          ),
                        ],
                      ),
                    ),
                    customDivider(),
                  ],
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: FlatButton(
                      color: AppColors.PRIMARY_COLOR,
                      onPressed: () {
                        var jsonData =
                            '{"conatct":true,"residential":true,"post":true,"email":true,"success":true}';
                        if (this.isCNChecked ||
                            this.isRAChecked ||
                            isPostChecked ||
                            this.isEmailChecked) {
                          Navigator.pop(context, jsonData);
                        } else {
                          Navigator.pop(context, "fail");
                        }
                      },
                      child: Text(
                        "SUBMIT",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget customDivider() {
    return Divider(
      indent: 20,
      color: AppColors.DIVIDER,
    );
  }
}
