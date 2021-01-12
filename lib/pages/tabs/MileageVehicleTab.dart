import 'package:flutter/material.dart'; 
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/constants/Utility.dart';
import 'package:sahelp/constants/device_helper.dart';
import 'package:sahelp/customwidget/CardContainer.dart';
import 'package:sahelp/customwidget/CustomErrorWidget.dart';
import 'package:sahelp/customwidget/DetailItemWidget.dart';

class MileageVehicleTab extends StatefulWidget {
  @override
  _MileageVehicleTabState createState() => _MileageVehicleTabState();
}

class _MileageVehicleTabState extends State<MileageVehicleTab> {
   var response;
  bool showLoader = true;

  @override
  void initState() {
    super.initState();

    getApiResponse();
  }

  void getApiResponse() async {
    response = await Utility.postapis("SProc_Mobility_GetMileagePerVehicle",
        ["@AccountNumber~~" + Utility.accountNumber2]);

    setState(() {
      response = response["NewDataSet"] != null
          ? response["NewDataSet"]["SProc_Mobility_GetMileagePerVehicle"]
          : null;
    });
  }

  Widget content(BuildContext context, var response) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
      child: Column(children: <Widget>[
        DetailItemWidget(
          title: "Current Month's Mileage",
          showPrice: false,
          value: response["DistanceMTD"],
        ),
        DetailItemWidget(
          title: "Current Month's Days with",
          showPrice: false,
          value: response["DaysWithNoMovement"],
        ),
        DetailItemWidget(
          title: "Total Drive Time",
          showPrice: false,
          value: response["DriveTime"],
        ),
        DetailItemWidget(
          title: "Braking Alerts per 100 km",
          showPrice: false,
          value: response["BrakingAlert"],
        ),
        DetailItemWidget(
          title: "Harsh Turning Alerts",
          showPrice: false,
          value: response["TurningAlerts"],
        ),
        DetailItemWidget(
          title: "Harsh Turning Alerts per 100km",
          showPrice: false,
          value: response["TurnAlert_Per100km"],
        ),
        DetailItemWidget(
          title: "Speeding Alerts",
          showPrice: false,
          value: response["SpeedingAlert"],
        ),
        DetailItemWidget(
          title: "Last Signal Received Date",
          showPrice: false,
          value: response["DateLastMoved"],
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.APP_HEADER_BG_GREY,
        body: response != null
            ? Container(
                height: DeviceHelper.fullHeight,
                width: DeviceHelper.fullWidth,
                child: ListView.builder(
                  itemCount: response.length,
                  itemBuilder: (context, counter) {
                    return Container(
                      child: Column(
                        children: [
                          CardContainer(
                            headerColor: AppColors.APP_GREEN,
                            headerTitle: response[counter]["MonthTitle"],
                            widget: content(context, response[counter]),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            : CustomErrorWidget(showLoader: showLoader)
      ),
    );
  }
}
