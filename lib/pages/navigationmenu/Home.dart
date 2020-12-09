import "package:flutter/material.dart";
import 'package:sahelp/customwidget/ColorConstants.dart' as ColorConstants;
import 'package:sahelp/pages/login/Login.dart';
import 'package:sahelp/pages/login/Register.dart';
import 'package:sahelp/pages/navigationmenu/NavigationDrawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: Text("DASHBOARD"),
              backgroundColor: ColorConstants.AppColors.PRIMARY_COLOR,
              bottom: TabBar(
                tabs: [
                  Tab(text: "Deal Dashboard"),
                  Tab(text: "Insurance Dashboard")
                ],
              ),
            ),
            drawer: NavigationDrawer(),
            body: TabBarView(children: [
              Login(),
              Register(),
            ]),
          )),
    );
  }
}
