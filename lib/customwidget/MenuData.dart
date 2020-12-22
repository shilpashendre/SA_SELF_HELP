class MenuData {
  String itemName;
  String itemIcon;
  String routeName;
  bool isSubtitle;
  bool isTabPresent;
  bool isIconNeeded;
  List<TabDeatils> tabData;
  String headerIcon;

  MenuData(
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
