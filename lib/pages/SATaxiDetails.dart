import "package:flutter/material.dart";
import 'package:sahelp/pages/tabs/Announcements.dart';
import 'package:sahelp/pages/tabs/ContactUs.dart'; 
import 'package:sahelp/pages/tabs/InsurancePolicy.dart';
import 'package:sahelp/pages/tabs/LegalDisclaimer.dart';

class SATaxiDetails extends StatefulWidget {
  static const String routeName = "/home";
  @override
  _SATaxiDetailsState createState() => _SATaxiDetailsState();
}

class _SATaxiDetailsState extends State<SATaxiDetails> {
  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      Announcements(),
      InsurancePolicy(),
      ContactUs(),
      LegalDisclaimer(),
    ]);
  }
}
