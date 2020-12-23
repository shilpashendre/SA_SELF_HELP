import "package:flutter/material.dart";
import 'package:sahelp/pages/tabs/arrearsStmntTab.dart';

class ArrearsStmt extends StatefulWidget {
  static const String routeName = "/home";
  @override
  _ArrearsStmtState createState() => _ArrearsStmtState();
}

class _ArrearsStmtState extends State<ArrearsStmt> {
  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [ArrearsStmtTab()]);
  }
}
