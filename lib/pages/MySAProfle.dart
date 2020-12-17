import "package:flutter/material.dart";
import 'package:sahelp/constants/ColorConstants.dart'; 
import 'package:sahelp/pages/tabs/InsuranceDB.dart';
import 'package:sahelp/customwidget/HeaderIconButton.dart';
import 'package:sahelp/pages/tabs/PersonalDetails.dart';
import 'package:sahelp/pages/tabs/VehicleProfile.dart';

class MYSAProfile extends StatefulWidget {
  static const String routeName = "/home";
  @override
  _MYSAProfileState createState() => _MYSAProfileState();
}

class _MYSAProfileState extends State<MYSAProfile> {
  @override
   Widget build(BuildContext context) {
    return TabBarView(children: [
          VehicleProfile(),
          PersonalDetails(),
        ]) ;
  }
}
