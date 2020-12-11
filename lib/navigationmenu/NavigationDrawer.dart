import "package:flutter/material.dart";
import 'package:sahelp/customwidget/MenuData.dart';
import "package:sahelp/navigationmenu/DrawerItem.dart";
import 'package:sahelp/constants/ColorConstants.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  List<MenuData> listmenu = [
    MenuData(
        itemName: "Dashboard",
        itemIcon: "assets/images/ic_dashboard.png",
        isSubtitle: false,
        onTap: null),
    MenuData(
        itemName: "My SA Taxi Profile",
        itemIcon: "assets/images/ic_my_portfolio.png",
        isSubtitle: false,
        onTap: null),
    MenuData(itemName: "Account", isSubtitle: true),
    MenuData(
        itemName: "Bank Details",
        itemIcon: "assets/images/ic_bank_details.png",
        isSubtitle: false,
        onTap: null),
    MenuData(
        itemName: "Request Settlement Quote",
        itemIcon: "assets/images/ic_request_settelment_balance.png",
        isSubtitle: false,
        onTap: null),
    MenuData(itemName: "Financial Statement", isSubtitle: true),
    MenuData(
        itemName: "Balance",
        itemIcon: "assets/images/ic_balance.png",
        isSubtitle: false,
        onTap: null),
    MenuData(
        itemName: "Deals Details",
        itemIcon: "assets/images/ic_personal_no.png",
        isSubtitle: false,
        onTap: null),
    MenuData(
        itemName: "Arrears Statement",
        itemIcon: "assets/images/ic_arrears.png",
        isSubtitle: false,
        onTap: null),
    MenuData(
        itemName: "Generate Statement",
        itemIcon: "assets/images/ic_generate_statement.png",
        isSubtitle: false,
        onTap: null),
    MenuData(itemName: "Vehicle Movements", isSubtitle: true),
    MenuData(
        itemName: "Track Vehicle",
        itemIcon: "assets/images/ic_track_vehicle.png",
        isSubtitle: false,
        onTap: null),
    MenuData(
        itemName: "View Performance",
        itemIcon: "assets/images/ic_view_performance_phase2.png",
        isSubtitle: false,
        onTap: null),
    MenuData(
        itemName: "Request CarTrack Device",
        itemIcon: "assets/images/ic_request_cartrack_device.png",
        isSubtitle: false,
        onTap: null),
    MenuData(
        itemName: "Mileage per Vehicle",
        itemIcon: "assets/images/ic_view_performance.png",
        isSubtitle: false,
        onTap: null),
    MenuData(itemName: "Insurance", isSubtitle: true),
    MenuData(
        itemName: "Policy Details",
        itemIcon: "assets/images/ic_policy_details.png",
        isSubtitle: false,
        onTap: null),
    MenuData(
        itemName: "Claim Call Back",
        itemIcon: "assets/images/ic_claim_call_icon.png",
        isSubtitle: false,
        onTap: null),
    MenuData(
        itemName: "My Claim & Status",
        itemIcon: "assets/images/ic_claims_and_status.png",
        isSubtitle: false,
        onTap: null),
    MenuData(
        itemName: "Generate Insurance Documents",
        itemIcon: "assets/images/ic_generate_statement.png",
        isSubtitle: false,
        onTap: null),
    MenuData(itemName: "SA Taxi Details", isSubtitle: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Expanded(
        flex: 1,
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          DrawerHeader(
            child: Expanded(
                flex: 3,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                          flex: 2,
                          child: Container(
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/ic_sa_menu_icon.png",
                                  ),
                                  fit: BoxFit.cover,
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
                              ))),
                      Expanded(
                          flex: 1,
                          child: Column(
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
                                    Icon(
                                      Icons.power_settings_new,
                                      color: Colors.white,
                                      size: 20,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ))
                    ])),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: listmenu.map((menu) {
              if (menu.isSubtitle) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  color: AppColors.APP_HEADER_BG_GREY,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(menu.itemName,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: AppColors.APP_MENU_SUBHEADER_TEXT)),
                  ),
                );
              } else {
                return DrawerItem(
                  itemName: menu.itemName,
                  itemIcon: menu.itemIcon,
                );
              }
            }).toList(),
          )
        ]),
      ),
    );
  }
}
