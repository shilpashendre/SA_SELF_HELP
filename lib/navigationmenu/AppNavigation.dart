import 'package:flutter/material.dart';
import 'package:sahelp/customwidget/MenuData.dart';
import 'package:sahelp/customwidget/HeaderIconButton.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/pages/Balance.dart';
import 'package:sahelp/pages/BankDetails.dart';
import 'package:sahelp/pages/DealDetails.dart';
import 'package:sahelp/pages/Home.dart';
import 'package:sahelp/pages/MileagePerVehicle.dart';
import 'package:sahelp/pages/MyClaimStatus.dart';
import 'package:sahelp/pages/PolicyDetails.dart';
import 'package:sahelp/pages/MySAProfle.dart';
import 'package:sahelp/pages/generateInsuranceDoc.dart';

class AppNavigation extends StatefulWidget {
  static const String routeName = '/drawer';
  @override
  _AppNavigationState createState() => _AppNavigationState();
}

class _AppNavigationState extends State<AppNavigation> {
  int selectedDrawerIndex = 0;
  getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new Home();
      case 1:
        return new MYSAProfile();
      case 2:
        return new Text("Error");
      case 3:
        return new BankDetails();
      case 4:
        return new Text("Error");
      case 5:
        return new Text("Error");
      case 6:
        return new Balance();
      case 7:
        return new DealDetails();
      case 8:
        return new Text("Error");
      case 9:
        return new Text("Error");
      case 10:
        return new Text("Error");
      case 11:
        return new Text("Error");
      case 12:
        return new Text("Error");
      case 13:
        return new Text("Error");
      case 14:
        return new MileagePerVehicle();
      case 15:
        return new Text("Error");
      case 16:
        return new PolicyDetails();
      case 17:
        return new Text("Error");
      case 18:
        return new MyClaimStatus();
      case 19:
        return new GenerateInsuranceDoc();
      default:
        return new Text("Error");
    }
  }

  onSelectItem(int index) {
    setState(() => selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  List<MenuData> listmenu = [
    MenuData(
        itemName: "Dashboard",
        isIconNeeded: true,
        itemIcon: "assets/images/ic_dashboard.png",
        isSubtitle: false,
        isTabPresent: true,
        tabData: [
          TabDeatils("Deal Dashboard"),
          TabDeatils("Insurance Dashboard")
        ],
        headerIcon: "survey.png"),
    MenuData(
        itemName: "My SA Taxi Profile",
        itemIcon: "assets/images/ic_my_portfolio.png",
        isSubtitle: false,
        isTabPresent: true,
        isIconNeeded: false,
        tabData: [
          TabDeatils("Vehicle Profiles"),
          TabDeatils("Personal Details")
        ],
        headerIcon: "ic_email_white.png"),
    MenuData(
      itemName: "Account",
      isSubtitle: true,
      isTabPresent: false,
    ),
    MenuData(
        isTabPresent: true,
        itemName: "Bank Details",
        itemIcon: "assets/images/ic_bank_details.png",
        isSubtitle: false,
        isIconNeeded: true,
        tabData: [
          TabDeatils("   063365:065978  "),
        ],
        headerIcon: "ic_email_white.png"),
    MenuData(
        isTabPresent: false,
        itemName: "Request Settlement Quote",
        isIconNeeded: false,
        itemIcon: "assets/images/ic_request_settelment_balance.png",
        isSubtitle: false,
        headerIcon: "ic_email_white.png"),
    MenuData(
        itemName: "Financial Statement", isTabPresent: false, isSubtitle: true),
    MenuData(
        isTabPresent: false,
        itemName: "Balance",
        isIconNeeded: true,
        itemIcon: "assets/images/ic_balance.png",
        isSubtitle: false,
        headerIcon: "ic_email_white.png"),
    MenuData(
        isTabPresent: false,
        itemName: "Deals Details",
        isIconNeeded: true,
        itemIcon: "assets/images/ic_personal_no.png",
        isSubtitle: false,
        routeName: "/dealdetails",
        headerIcon: "ic_email_white.png"),
    MenuData(
        isTabPresent: false,
        itemName: "Arrears Statement",
        isIconNeeded: true,
        itemIcon: "assets/images/ic_arrears.png",
        isSubtitle: false,
        headerIcon: "ic_email_white.png"),
    MenuData(
        itemName: "Generate Statement",
        isTabPresent: false,
        isIconNeeded: false,
        itemIcon: "assets/images/ic_generate_statement.png",
        isSubtitle: false,
        headerIcon: "ic_email_white.png"),
    MenuData(
        itemName: "Vehicle Movements", isTabPresent: false, isSubtitle: true),
    MenuData(
        isTabPresent: false,
        itemName: "Track Vehicle",
        itemIcon: "assets/images/ic_track_vehicle.png",
        isSubtitle: false,
        isIconNeeded: false,
        headerIcon: "ic_email_white.png"),
    MenuData(
        isTabPresent: false,
        itemName: "View Performance",
        isIconNeeded: false,
        itemIcon: "assets/images/ic_view_performance_phase2.png",
        isSubtitle: false,
        headerIcon: "ic_email_white.png"),
    MenuData(
        isTabPresent: false,
        itemName: "Request CarTrack Device",
        itemIcon: "assets/images/ic_request_cartrack_device.png",
        isSubtitle: false,
        isIconNeeded: false,
        headerIcon: "ic_email_white.png"),
    MenuData(
        itemName: "Mileage per Vehicle",
        itemIcon: "assets/images/ic_view_performance.png",
        isTabPresent: true,
        isSubtitle: false,
        isIconNeeded: true,
        tabData: [
          TabDeatils("   063365:065978  "),
        ],
        headerIcon: "ic_email_white.png"),
    MenuData(itemName: "Insurance", isTabPresent: false, isSubtitle: true),
    MenuData(
        isTabPresent: false,
        itemName: "Policy Details",
        itemIcon: "assets/images/ic_policy_details.png",
        isSubtitle: false,
        isIconNeeded: true,
        headerIcon: "ic_email_white.png"),
    MenuData(
        isTabPresent: false,
        itemName: "Claim Call Back",
        isIconNeeded: false,
        itemIcon: "assets/images/ic_claim_call_icon.png",
        isSubtitle: false,
        headerIcon: "ic_email_white.png"),
    MenuData(
        isTabPresent: false,
        itemName: "My Claim & Status",
        isIconNeeded: true,
        itemIcon: "assets/images/ic_claims_and_status.png",
        isSubtitle: false,
        headerIcon: "ic_email_white.png"),
    MenuData(
        isTabPresent: true,
        itemName: "Generate Insurance Documents",
        isIconNeeded: false,
        itemIcon: "assets/images/ic_generate_statement.png",
        isSubtitle: false,
        tabData: [
          TabDeatils("Passanger Liability Disc"),
          TabDeatils("Insurance T&C")
        ],
        headerIcon: "ic_email_white.png"),
    MenuData(
        itemName: "SA Taxi Details", isTabPresent: false, isSubtitle: true),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: listmenu[selectedDrawerIndex].isTabPresent
            ? listmenu[selectedDrawerIndex].tabData.length
            : 0,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: AppColors.PRIMARY_COLOR,
            title: Text(
              listmenu[selectedDrawerIndex].itemName.toUpperCase(),
              style:
                  TextStyle(fontWeight: FontWeight.w500, fontFamily: "Roboto"),
            ),
            bottom: listmenu[selectedDrawerIndex].isTabPresent
                ? TabBar(
                    tabs: listmenu[selectedDrawerIndex]
                        .tabData
                        .asMap()
                        .entries
                        .map((tabData) => Tab(
                              text: tabData.value.tabTitle,
                            ))
                        .toList(),
                    indicatorColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorWeight: 3.0,
                    isScrollable: true,
                    // indicatorPadding:
                    //     EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  )
                : null,
            actions: <Widget>[
              listmenu[selectedDrawerIndex].isIconNeeded
                  ? HeaderIconButton(
                      iconName: listmenu[selectedDrawerIndex].headerIcon)
                  : Text("")
            ],
          ),
          drawer: Drawer(
            child: ListView(padding: EdgeInsets.zero, children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: AppColors.PRIMARY_COLOR,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/top_user_icon.png",
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(25, 25, 0, 0),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                "assets/images/ic_name.png")))),
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mr Lawrence Thabathile Wem",
                              style: TextStyle(color: Colors.white),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "063365",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Image.asset(
                                    "assets/images/logout_icon.png",
                                    height: 18,
                                    width: 18,
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ])),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: listmenu.asMap().entries.map((menu) {
                  if (menu.value.isSubtitle) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      color: AppColors.APP_HEADER_BG_GREY,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(menu.value.itemName,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: AppColors.APP_MENU_SUBHEADER_TEXT)),
                      ),
                    );
                  } else {
                    return ListTile(
                      title: Row(
                        children: <Widget>[
                          Image.asset(
                            menu.value.itemIcon,
                            height: 25.0,
                            width: 25.0,
                            color: AppColors.APP_MENU_ICON,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(35.0, 0, 0, 0),
                            child: Text(
                              menu.value.itemName,
                              style: TextStyle(
                                color: AppColors.APP_MENU_TEXT,
                              ),
                            ),
                          )
                        ],
                      ),
                      onTap: () {
                        onSelectItem(menu.key);
                      },
                    );
                  }
                }).toList(),
              )
            ]),
          ),
          body: getDrawerItemWidget(selectedDrawerIndex),
        ),
      ),
    );
  }
}
