import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sahelp/constants/Utility.dart';
import 'package:sahelp/customwidget/CardContainer.dart';
import 'package:sahelp/customwidget/CustomErrorWidget.dart';

class DealDB extends StatefulWidget {
  @override
  _DealDBState createState() => _DealDBState();
}

class _DealDBState extends State<DealDB> {
  var response;

  @override
  void initState() {
    super.initState();

    getApiResponse();
  }

  void getApiResponse() async {
    response = await Utility.postapis(
        "SProc_Mobility_DealDashboard", ["@IDNumber~~" + Utility.idNumber]);

    setState(() {
      response = response["NewDataSet"] != null
          ? response["NewDataSet"]["SProc_Mobility_DealDashboard"]
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
                        CardContainer(
                          headerColor: AppColors.PRIMARY_COLOR,
                          headerTitle: response["AccountNumber"] != null
                              ? response["AccountNumber"]
                              : "N/A",
                          widget: content(),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: AppColors.APP_MENU_SUBHEADER_TEXT),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              response["TotalOutstanding"] != null
                                  ? response["TotalOutstanding"] +
                                      " outstanding"
                                  : "N/A",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          : CustomErrorWidget(),
    ));
  }

  Padding content() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CircularPercentIndicator(
              radius: 130.0,
              lineWidth: 8.0,
              animation: true,
              percent: response["PercComp"] != null
                  ? double.parse(response["PercComp"]) / 100
                  : "N/A",
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
                      response["PaidAmount"] != null
                          ? response["PaidAmount"].toString().substring(0, 9) +
                              " Paid"
                          : "N/A",
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
                      response["InstalmentsRemaining"],
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
                backgroundColor: AppColors.APP_MENU_SUBHEADER_TEXT,
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
    );
  }
}
