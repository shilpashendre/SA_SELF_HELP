import 'package:flutter/material.dart';
import 'package:sahelp/pages/tabs/InsuranceTnC.dart';
import 'package:sahelp/pages/tabs/passangerLiabilityDisc.dart';

class GenerateInsuranceDoc extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GenerateInsuranceDocState();
  }
}

class _GenerateInsuranceDocState extends State<GenerateInsuranceDoc> {
  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [PassangerLiabilityDisc(), InsuranceTnC()]);
  }
}
