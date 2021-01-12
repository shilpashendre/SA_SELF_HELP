import "package:flutter/material.dart";
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/navigationmenu/AppNavigation.dart';
import 'package:sahelp/pages/tabs/ExcessesTab.dart';
import 'package:sahelp/pages/tabs/OptionalCoverTab.dart';
import 'package:sahelp/pages/tabs/YourCoverTab.dart';

class PolicyDisplayTab extends StatefulWidget {
  static const String routeName = "/policytab";
  final response;
  PolicyDisplayTab({this.response});
  @override
  _PolicyDisplayTabState createState() => _PolicyDisplayTabState();
}

class _PolicyDisplayTabState extends State<PolicyDisplayTab> {
  @override
  void initState() {
    super.initState(); 
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
              backgroundColor: AppColors.PRIMARY_COLOR,
              elevation: 0,
              leading: BackButton(
                color: Colors.white,
                onPressed: () =>
                    Navigator.popAndPushNamed(context, AppNavigation.routeName),
              ),
              title: Text(
                "POLICY DETAILS",
                style: TextStyle(color: Colors.white),
              ),
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: "Your Cover",
                  ),
                  Tab(
                    text: "Optional Cover",
                  ),
                  Tab(
                    text: "Excesses",
                  )
                ],
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 3.0,
                isScrollable: true,
              )),
          body: TabBarView(
              children: [YourCoverTab(response:this.widget.response), OptionalCoverTab(response:this.widget.response), ExcessesTab(response:this.widget.response)])),
    ));
  }
}
