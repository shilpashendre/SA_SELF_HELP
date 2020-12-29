import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/customwidget/CardContainer.dart';
import 'package:sahelp/customwidget/DetailItemWidget.dart';

class MileageVehicleTab extends StatefulWidget {
  @override
  _MileageVehicleTabState createState() => _MileageVehicleTabState();
}

class _MileageVehicleTabState extends State<MileageVehicleTab> {
  
  Widget content(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
      child: Column(children: <Widget>[
        DetailItemWidget(
          title: "Current Month's Mileage...",
          showPrice: false,
          value: "391.15 km",
        ),
        DetailItemWidget(
          title: "Current Month's Days wit...",
          showPrice: false,
          value: "0",
        ),
        DetailItemWidget(
          title: "Total Drive Time",
          showPrice: false,
          value: "0.0 hr",
        ),
        DetailItemWidget(
          title: "Braking Alerts per 100 k...",
          showPrice: false,
          value: "0",
        ),
        DetailItemWidget(
          title: "Harsh Turning Alerts",
          showPrice: false,
          value: "0",
        ),
        DetailItemWidget(
          title: "Harsh Turning Alerts per...",
          showPrice: false,
          value: "0",
        ),
        DetailItemWidget(
          title: "Speeding Alerts",
          showPrice: false,
          value: "0",
        ),
        DetailItemWidget(
          title: "Last Signal Received Date",
          showPrice: false,
          value: "03 December 2020",
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.APP_HEADER_BG_GREY,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardContainer(
              headerColor: AppColors.APP_GREEN,
              headerTitle: "December 2020",
              widget: content(context),
            ),
            SizedBox(
              height: 20,
            ),
            CardContainer(
              headerColor: AppColors.APP_GREEN,
              headerTitle: "November 2020",
              widget: content(context),
            ),
            SizedBox(
              height: 20,
            ),
            CardContainer(
              headerColor: AppColors.APP_GREEN,
              headerTitle: "Octomber 2020",
              widget: content(context),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    ));
  }
}
