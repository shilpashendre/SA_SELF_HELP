import 'package:flutter/material.dart';

class MenuData {
  String itemName;
  String itemIcon;
  Function onTap;
  bool isSubtitle;

  MenuData({this.itemName, this.itemIcon, this.onTap,this.isSubtitle}); 
}
