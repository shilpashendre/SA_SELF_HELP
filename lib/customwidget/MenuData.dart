class MenuData {
  String itemName;
  String itemIcon;
  String routeName;
  bool isSubtitle;
  bool isTabPresent;
  List<TabDeatils> tabData;
  String headerIcon;
  int tabLength;

  MenuData(
      {this.itemName,
      this.itemIcon,
      this.routeName,
      this.isSubtitle,
      this.isTabPresent,
      this.tabLength,
      this.headerIcon,
      this.tabData});
}

class TabDeatils {
  final String tabTitle;
  TabDeatils(this.tabTitle);
}
