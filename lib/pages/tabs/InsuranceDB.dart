import 'package:flutter/material.dart';
import 'package:sahelp/customwidget/CustomErrorWidget.dart';

class InsuranceDB extends StatefulWidget {
  @override
  _InsuranceDBState createState() => _InsuranceDBState();
}

class _InsuranceDBState extends State<InsuranceDB> {
  @override
  Widget build(BuildContext context) {
    return Container(child: CustomErrorWidget(),);
  }
}
