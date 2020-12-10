import "package:flutter/material.dart";
import 'package:sahelp/constants/ColorConstants.dart' as ColorConstants;
import 'package:sahelp/login/Login.dart';
import 'package:sahelp/login/Register.dart';
import 'package:sahelp/navigationmenu/NavigationDrawer.dart';

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
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.help, color: Colors.white),
                    onPressed: null)
              ],
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
