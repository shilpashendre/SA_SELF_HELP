import "package:flutter/material.dart";
import 'package:sahelp/constants/ColorConstants.dart';
import "package:sahelp/customwidget/ButtonComponent.dart";
import 'package:sahelp/modal/CheckboxInfoModal.dart';

class SurveyPage1 extends StatefulWidget {
  static const String routeName = '/surveypage1';
  @override
  _SurveyPage1State createState() => _SurveyPage1State();
}

class _SurveyPage1State extends State<SurveyPage1> {
  String headerTitle =
      "In addition to what is currently offered on the App what else would you like the App to service?";
  int selectedCBIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.PRIMARY_COLOR,
        elevation: 0,
        leading: BackButton(
          color: Colors.white,
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "RETURN TO APP",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
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
                        headerTitle,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.APP_HEADER_BLUE,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 18, right: 18, top: 10),
                      child: Column(
                          children: cbList
                              .asMap()
                              .entries
                              .map((cb) => checkboxContainer(
                                  cb.value.cbLabel, cb.value.isChecked, cb.key))
                              .toList()),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  buttonContainer(),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }

  InkWell checkboxContainer(String label, bool isChecked, int pos) {
    return InkWell(
      onTap: () {
        print(pos);
        setState(() {
          selectedCBIndex = pos;
          cbList[selectedCBIndex].isChecked = true;
        });
      },
      child: Container(
        margin: EdgeInsets.only(top: 10),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: AppColors.APP_MENU_SUBHEADER_TEXT, width: 0.5),
              ),
              width: 10,
              height: 10,
              child: Theme(
                data: ThemeData(
                  unselectedWidgetColor: AppColors.DIVIDER,
                ),
                child: Transform.scale(
                  scale: 0.5,
                  child: Checkbox(
                    checkColor: AppColors.APP_MENU_SUBHEADER_TEXT,
                    activeColor: Colors.transparent,
                    value: isChecked,
                    onChanged: (bool value) {},
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(label),
            ),
          ],
        ),
      ),
    );
  }

  Row buttonContainer() {
    String strVal = "";
    return Row(
      children: [
        ButtonComponent(
          btnLabel: "PREVIOUS",
          btnColor: AppColors.PRIMARY_COLOR,
          onTap: () {
            // Navigator.pushNamed(context, AppNavigation.routeName);
          },
        ),
        ButtonComponent(
          btnLabel: "SUBMIT",
          btnColor: AppColors.APP_MENU_SUBHEADER_TEXT,
          onTap: () {
            cbList.asMap().entries.map((cb) {
              if (cbList[cb.key].isChecked) {
                strVal += cbList[cb.key].cbLabel + "/";
              }
            }).toList();
            print(strVal);
          },
        ),
      ],
    );
  }
}
