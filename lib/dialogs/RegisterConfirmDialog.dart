import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/constants/device_helper.dart';
import 'package:sahelp/customwidget/LegalDisclaimerWidget.dart';
import 'package:sahelp/navigationmenu/AppNavigation.dart';

class RegisterConfirmDialog extends StatefulWidget {
  final String title, descriptions, text;
  final Image img;

  const RegisterConfirmDialog(
      {Key key, this.title, this.descriptions, this.text, this.img})
      : super(key: key);

  @override
  _RegisterConfirmDialogState createState() => _RegisterConfirmDialogState();
}

class _RegisterConfirmDialogState extends State<RegisterConfirmDialog> {
  final myScrollController = ScrollController();

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

  Widget disclaimerText(isHeader, text) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: TextStyle(
          fontSize: 13,
          color:
              isHeader ? AppColors.APP_MENU_SUBHEADER_TEXT : AppColors.DIVIDER,
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal),
    );
  }

  Widget dialogButton(btnLabel, btnColor, onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          color: btnColor,
        ),
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
            child: Text(
              btnLabel,
              style: TextStyle(color: Colors.white, fontFamily: "Roboto"),
            ),
          ),
        ),
      ),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
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
                width: DeviceHelper.fullWidth,
                height: 60,
                color: AppColors.PRIMARY_COLOR,
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.start, //change here don't //worked
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 0),
                      child: Text(
                        "Legal Disclaimer",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: DeviceHelper.fullWidth,
                height: 400,
                child: Scrollbar(
                    isAlwaysShown: true,
                    controller: ScrollController(initialScrollOffset: 0.0),
                    child: LegalDisclaimerWidget()),
              ),
              Divider(
                color: AppColors.APP_MENU_SUBHEADER_TEXT,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    disclaimerText(false, "Do you accept these terms?"),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 120, 0),
                      child: Divider(
                        color: AppColors.APP_MENU_SUBHEADER_TEXT,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        dialogButton(
                          "YES",
                          AppColors.APP_HEADER_BLUE,
                          () {
                            Navigator.pushNamed(
                                context, AppNavigation.routeName);
                          },
                        ),
                        dialogButton(
                          "NO",
                          AppColors.APP_MENU_SUBHEADER_TEXT,
                          () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
