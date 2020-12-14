import "package:flutter/material.dart";
import 'package:sahelp/pages/tabs/MileageVehicleTab.dart';

class MileagePerVehicle extends StatefulWidget {
  static const String routeName = "/home";
  @override
  _MileagePerVehicleState createState() => _MileagePerVehicleState();
}

class _MileagePerVehicleState extends State<MileagePerVehicle> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: TabBarView(children: [MileageVehicleTab()]),
      ),
    );
  }
}
