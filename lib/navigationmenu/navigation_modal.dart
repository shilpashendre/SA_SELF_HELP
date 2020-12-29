class NavigationModal {
  String itemName;
  String itemIcon;
  String routeName;
  bool isSubtitle;
  bool isTabPresent;
  bool isIconNeeded;
  List<TabDeatils> tabData;
  String headerIcon;

  NavigationModal(
      {this.itemName,
      this.itemIcon,
      this.routeName,
      this.isSubtitle,
      this.isIconNeeded,
      this.isTabPresent,
      this.headerIcon,
      this.tabData});
}

class TabDeatils {
  final String tabTitle;
  TabDeatils(this.tabTitle);
}

List<NavigationModal> navigationItems = [
  NavigationModal(
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
  NavigationModal(
      itemName: "My SA Taxi Profile",
      itemIcon: "assets/images/ic_my_portfolio.png",
      isSubtitle: false,
      isTabPresent: true,
      isIconNeeded: false,
      tabData: [TabDeatils("Vehicle Profiles"), TabDeatils("Personal Details")],
      headerIcon: "ic_email_white.png"),
  NavigationModal(
    itemName: "Account",
    isSubtitle: true,
    isTabPresent: false,
  ),
  NavigationModal(
      isTabPresent: true,
      itemName: "Bank Details",
      itemIcon: "assets/images/ic_bank_details.png",
      isSubtitle: false,
      isIconNeeded: true,
      tabData: [
        TabDeatils("   063365:065978  "),
      ],
      headerIcon: "ic_email_white.png"),
  NavigationModal(
      isTabPresent: false,
      itemName: "Request Settlement Quote",
      isIconNeeded: false,
      itemIcon: "assets/images/ic_request_settelment_balance.png",
      isSubtitle: false,
      headerIcon: "ic_email_white.png"),
  NavigationModal(
      itemName: "Financial Statement", isTabPresent: false, isSubtitle: true),
  NavigationModal(
      isTabPresent: false,
      itemName: "Balance",
      isIconNeeded: true,
      itemIcon: "assets/images/ic_balance.png",
      isSubtitle: false,
      headerIcon: "ic_email_white.png"),
  NavigationModal(
      isTabPresent: false,
      itemName: "Deals Details",
      isIconNeeded: true,
      itemIcon: "assets/images/ic_personal_no.png",
      isSubtitle: false,
      routeName: "/dealdetails",
      headerIcon: "ic_email_white.png"),
  NavigationModal(
    isTabPresent: true,
    itemName: "Arrears Statement",
    isIconNeeded: true,
    itemIcon: "assets/images/ic_arrears.png",
    isSubtitle: false,
    headerIcon: "ic_email_white.png",
    tabData: [
      TabDeatils("   063365:065978  "),
    ],
  ),
  NavigationModal(
      itemName: "Generate Statement",
      isTabPresent: false,
      isIconNeeded: false,
      itemIcon: "assets/images/ic_generate_statement.png",
      isSubtitle: false,
      headerIcon: "ic_email_white.png"),
  NavigationModal(
      itemName: "Vehicle Movements", isTabPresent: false, isSubtitle: true),
  NavigationModal(
      isTabPresent: false,
      itemName: "Track Vehicle",
      itemIcon: "assets/images/ic_track_vehicle.png",
      isSubtitle: false,
      isIconNeeded: false,
      headerIcon: "ic_email_white.png"),
  NavigationModal(
      isTabPresent: false,
      itemName: "View Performance",
      isIconNeeded: false,
      itemIcon: "assets/images/ic_view_performance_phase2.png",
      isSubtitle: false,
      headerIcon: "ic_email_white.png"),
  NavigationModal(
      isTabPresent: false,
      itemName: "Request CarTrack Device",
      itemIcon: "assets/images/ic_request_cartrack_device.png",
      isSubtitle: false,
      isIconNeeded: false,
      headerIcon: "ic_email_white.png"),
  NavigationModal(
      itemName: "Mileage per Vehicle",
      itemIcon: "assets/images/ic_view_performance.png",
      isTabPresent: true,
      isSubtitle: false,
      isIconNeeded: true,
      tabData: [
        TabDeatils("   063365:065978  "),
      ],
      headerIcon: "ic_email_white.png"),
  NavigationModal(itemName: "Insurance", isTabPresent: false, isSubtitle: true),
  NavigationModal(
      isTabPresent: false,
      itemName: "Policy Details",
      itemIcon: "assets/images/ic_policy_details.png",
      isSubtitle: false,
      isIconNeeded: true,
      headerIcon: "ic_email_white.png"),
  NavigationModal(
      isTabPresent: false,
      itemName: "Claim Call Back",
      isIconNeeded: false,
      itemIcon: "assets/images/ic_claim_call_icon.png",
      isSubtitle: false,
      headerIcon: "ic_email_white.png"),
  NavigationModal(
      isTabPresent: false,
      itemName: "My Claim & Status",
      isIconNeeded: true,
      itemIcon: "assets/images/ic_claims_and_status.png",
      isSubtitle: false,
      headerIcon: "ic_email_white.png"),
  NavigationModal(
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
  NavigationModal(
      itemName: "SA Taxi Details",
      isTabPresent: true,
      isSubtitle: false,
      isIconNeeded: false,
      itemIcon: "assets/images/ic_generate_statement.png",
      tabData: [
        TabDeatils("Announcements"),
        TabDeatils("Insurance Policy"),
        TabDeatils("Contact Us"),
        TabDeatils("Legal Disclaimer"),
      ],
      headerIcon: "ic_email_white.png"),
];
