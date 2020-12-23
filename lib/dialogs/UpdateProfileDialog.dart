import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';

class UpdateProfileDialog extends StatefulWidget {
  @override
  _UpdateProfileDialogState createState() => _UpdateProfileDialogState();
}

class _UpdateProfileDialogState extends State<UpdateProfileDialog> {
  String radioLabel = "063365:065978";
  String strSelected = "strUnselected";
  bool valuefirst = false;
  bool valuesecond = false;
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
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Select below personal details which you want to update",
                    style: TextStyle(color: AppColors.APP_MENU_SUBHEADER_TEXT),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        // Checkbox(
                        //   checkColor: AppColors.APP_MENU_SUBHEADER_TEXT,
                        //   activeColor: Colors.white,
                        //   value: this.valuefirst,
                        //   onChanged: (bool value) {
                        //     setState(() {
                        //       this.valuefirst = value;
                        //     });
                        //   },
                        // ),
                        CheckboxListTile(
                          title: Text("title text"),
                          value: this.valuefirst,
                          onChanged: (newValue) {
                            setState(() {
                              valuefirst = newValue;
                            });
                          },
                          controlAffinity: ListTileControlAffinity
                              .leading, //  <-- leading Checkbox
                        ), 
                      ],
                    ),
                    Divider(
                      color: AppColors.DIVIDER,
                    )
                  ],
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
                              width: 1, color: AppColors.APP_GREY_DIVIDER))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: FlatButton(
                            color: AppColors.PRIMARY_COLOR,
                            onPressed: () {
                              Navigator.of(context).pop();
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
