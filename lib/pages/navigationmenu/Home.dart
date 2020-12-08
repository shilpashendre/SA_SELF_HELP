import "package:flutter/material.dart";
import 'package:sahelp/data/ColorConstants.dart' as ColorConstants;
import 'package:sahelp/pages/login/Login.dart';
import 'package:sahelp/pages/login/Register.dart';
import 'package:sahelp/pages/navigationmenu/NavigationDrawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Widget build(BuildContext context) {
  //   return SafeArea(
  //       child: Scaffold(
  //     appBar: AppBar(
  //         title: Text("Home"),
  //         backgroundColor: ColorConstants.AppColors.PRIMARY_COLOR),
  //     drawer: NavigationDrawer(),
  //     body: Center(
  //       child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: <Widget>[
  //             Text(
  //               "Home",
  //               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
  //             ),
  //             RaisedButton(
  //               onPressed: () {
  //                 Navigator.pushNamed(context, "/");
  //               },
  //               child: Text("Next"),
  //             )
  //           ]),
  //     ),
  //   ));
  // }
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
