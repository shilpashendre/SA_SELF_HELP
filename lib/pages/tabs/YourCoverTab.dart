import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/customwidget/CardContainer.dart';
import 'package:sahelp/customwidget/DetailItemWidget.dart';

class YourCoverTab extends StatefulWidget {
  static const String routeName = '/dealdetails';

  final response;
  YourCoverTab({this.response});

  @override
  _YourCoverTabState createState() => _YourCoverTabState();
}
// {AccountNumber: 063365:059721, PolicyNo: SAT71619, Product: Vehicle Owner Protection Plan (VOPP), 
// BrokerName: SA Taxi Protect (Pty) Ltd, MotorInsurerName: Guardrisk Insurance Company Limited, 
// SumInsured: R0.00, startDate: 01 September 2015, TotalPremium: R0.00, ComprehensiveCover: R0.00, 
// Windscreen: R0.00, Sasria: R0.00, PolicyVehicleDescription: -, RegistrationNumber: TBA 
//               , ChassisNo: -, EngineNo: -, DeathBenefit: No, VehicleMake: N/A), VehicleModel: N/A)  , VehicleYear: 0}

class _YourCoverTabState extends State<YourCoverTab> {
  
  Widget content(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      child: Column(children: <Widget>[
        DetailItemWidget(
          title: "Comprehensive...",
          price: "R0.00",
          value: "R0.00",
          showPrice: true,
        ),
        DetailItemWidget(
          title: "Windscreen",
          price: "",
          value: "R0.00",
          showPrice: true,
        ),
        DetailItemWidget(
          title: "SASRIA",
          price: "",
          value: "R0.00",
          showPrice: true,
        ),
        DetailItemWidget(
          title: "Admin Fee",
          price: "",
          value: "-",
          showPrice: true,
        ),
      ]),
    );
  }

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
                children: <Widget>[
                  CardContainer(
                    headerColor: AppColors.APP_HEADER_BLUE,
                    headerTitle: "SAT71619",
                    widget: content(context),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
