import "package:flutter/material.dart";
import 'package:sahelp/data/MenuData.dart';
import "package:sahelp/pages/navigationmenu/DrawerItem.dart";
import 'package:sahelp/data/ColorConstants.dart' as ColorConstants;

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  List<MenuData> listmenu = [
    MenuData(
        itemName: "Dashboard",
        itemIcon: "assets/images/dashboard.svg",
        isSubtitle: false,
        onTap: null),
    MenuData(
        itemName: "My SA Taxi Profile",
        itemIcon: "assets/images/profile.svg",
        isSubtitle: false,
        onTap: null),
    MenuData(itemName: "Account", isSubtitle: true),
    MenuData(
        itemName: "Bank Details",
        itemIcon: "assets/images/bankdetails.svg",
        isSubtitle: false,
        onTap: null),
    MenuData(
        itemName: "Request Settlement Quote",
        itemIcon: "assets/images/requestquote.svg",
        isSubtitle: false,
        onTap: null),
    MenuData(itemName: "Financial Statement", isSubtitle: true),
    MenuData(
        itemName: "Balance",
        itemIcon: "assets/images/moneybag.svg",
        isSubtitle: false,
        onTap: null),
    MenuData(
        itemName: "Deals Details",
        itemIcon: "assets/images/dealdetails.svg",
        isSubtitle: false,
        onTap: null),
    MenuData(
        itemName: "Arrears Statement",
        itemIcon: "assets/images/arrears.svg",
        isSubtitle: false,
        onTap: null),
    MenuData(
        itemName: "Generate Statement",
        itemIcon: "assets/images/graph.svg",
        isSubtitle: false,
        onTap: null),
    MenuData(itemName: "Vehicle Movements", isSubtitle: true),
    MenuData(
        itemName: "Track Vehicle",
        itemIcon: "assets/images/location.svg",
        isSubtitle: false,
        onTap: null),
    MenuData(
        itemName: "View Performance",
        itemIcon: "assets/images/location.svg",
        isSubtitle: false,
        onTap: null),
    MenuData(
        itemName: "Request CarTrack Device",
        itemIcon: "assets/images/location.svg",
        isSubtitle: false,
        onTap: null),
    MenuData(
        itemName: "Mileage per Vehicle",
        itemIcon: "assets/images/location.svg",
        isSubtitle: false,
        onTap: null),
    MenuData(itemName: "Insurance", isSubtitle: true),
    MenuData(
        itemName: "Policy Details",
        itemIcon: "assets/images/location.svg",
        isSubtitle: false,
        onTap: null),
    MenuData(
        itemName: "Claim Call Back",
        itemIcon: "assets/images/location.svg",
        isSubtitle: false,
        onTap: null),
    MenuData(
        itemName: "My Claim & Status",
        itemIcon: "assets/images/location.svg",
        isSubtitle: false,
        onTap: null),
    MenuData(
        itemName: "Generate Insurance Documents",
        itemIcon: "assets/images/location.svg",
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
                                                  "assets/images/thumbnail.png")))),
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
                  color: ColorConstants.AppColors.APP_BG_GREY,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(menu.itemName,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: ColorConstants
                                .AppColors.APP_MENU_SUBHEADER_TEXT)),
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
