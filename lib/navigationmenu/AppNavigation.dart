import 'package:flutter/material.dart'; 
import 'package:sahelp/customwidget/HeaderIconButton.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/dialogs/UpdateProfileMSGDialog.dart';
import 'package:sahelp/navigationmenu/NavigationItemTitle.dart';
import 'package:sahelp/navigationmenu/navigation_modal.dart';
import 'package:sahelp/pages/Balance.dart';
import 'package:sahelp/pages/BankDetails.dart';
import 'package:sahelp/pages/ClaimCallBack.dart';
import 'package:sahelp/pages/DealDetails.dart';
import 'package:sahelp/pages/GenerateStmt.dart';
import 'package:sahelp/pages/Home.dart';
import 'package:sahelp/pages/MileagePerVehicle.dart';
import 'package:sahelp/pages/MyClaimStatus.dart';
import 'package:sahelp/pages/PolicyDetails.dart';
import 'package:sahelp/pages/MySAProfle.dart';
import 'package:sahelp/pages/RequestCarTrack.dart';
import 'package:sahelp/pages/RequestSettlementQuote.dart';
import 'package:sahelp/pages/SATaxiDetails.dart';
import 'package:sahelp/pages/arrearsStmt.dart';
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
        // no class
        return new Text("Error");
      case 3:
        return new BankDetails();
      case 4:
        return new RequestSettlementQuote();
      case 5:
        // no class
        return new Text("Error");
      case 6:
        return new Balance();
      case 7:
        return new DealDetails();
      case 8:
        return new ArrearsStmt();
      case 9:
        return new GenerateStmt();
      case 10:
        // no class
        return new Text("Error");
      case 11:
        return new Text("Error");
      case 12:
        return new Text("Error");
      case 13:
        return new RequestCartTrack();
      case 14:
        return new MileagePerVehicle();
      case 15:
        // no class
        return new Text("Error");
      case 16:
        return new PolicyDetails();
      case 17:
        return new ClaimCallBack();
      case 18:
        return new MyClaimStatus();
      case 19:
        return new GenerateInsuranceDoc();
      case 20:
        return SATaxiDetails();
      default:
        // no class
        return new Text("Error");
    }
  }

  onSelectItem(int index) {
    setState(() => selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  Future<bool> _onWillPop() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return UpdateProfileMSGDialog(
            dialogMsg: "Are you sure, you want to exit?",
            showExit: true,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: SafeArea(
        child: DefaultTabController(
          length: navigationItems[selectedDrawerIndex].isTabPresent
              ? navigationItems[selectedDrawerIndex].tabData.length
              : 0,
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: AppColors.PRIMARY_COLOR,
              title: Text(
                navigationItems[selectedDrawerIndex].itemName.toUpperCase(),
                style: TextStyle(
                    fontWeight: FontWeight.w500, fontFamily: "Roboto"),
              ),
              bottom: navigationItems[selectedDrawerIndex].isTabPresent
                  ? TabBar(
                      tabs: navigationItems[selectedDrawerIndex]
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
                navigationItems[selectedDrawerIndex].isIconNeeded
                    ? HeaderIconButton(
                        iconName:
                            navigationItems[selectedDrawerIndex].headerIcon)
                    : Text("")
              ],
            ),
            drawer: Drawer(
                child: Column(
              children: [
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
                Expanded(
                  child: ListView.builder(
                    // separatorBuilder: (context, counter) {
                    //   return Divider(
                    //     height: 12.0,
                    //   );
                    // },

                    itemBuilder: (context, counter) {
                      return NavigationItemTitle(
                        counter: counter,
                        onTap: () {
                          onSelectItem(counter);
                        },
                        isSelected: counter == selectedDrawerIndex,
                      );
                    },
                    itemCount: navigationItems.length,
                  ),
                ),
              ],
            )),
            body: getDrawerItemWidget(selectedDrawerIndex),
          ),
        ),
      ),
    );
  }
}
