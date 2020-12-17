import "package:flutter/material.dart";
import 'package:sahelp/pages/tabs/DealDB.dart';
import 'package:sahelp/pages/tabs/InsuranceDB.dart';

class Home extends StatefulWidget {
  static const String routeName = "/home";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      DealDB(),
      InsuranceDB(),
    ]);
  }
}
