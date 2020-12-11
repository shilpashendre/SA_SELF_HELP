import "package:flutter/material.dart";
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/navigationmenu/NavigationDrawer.dart';
import 'package:sahelp/pages/DealDB.dart';
import 'package:sahelp/pages/InsuranceDB.dart';

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
              title: Text(
                "DASHBOARD",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: AppColors.PRIMARY_COLOR,
              bottom: TabBar(
                tabs: [
                  Tab(text: "Deal Dashboard"),
                  Tab(text: "Insurance Dashboard")
                ],
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.label,
              ),
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.help, color: Colors.white),
                    onPressed: null)
              ],
            ),
            drawer: NavigationDrawer(),
            body: TabBarView(children: [
              DealDB(),
              InsuranceDB(),
            ]),
          )),
    );
  }
}
