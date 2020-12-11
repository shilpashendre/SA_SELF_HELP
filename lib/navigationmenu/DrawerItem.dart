import "package:flutter/material.dart";
import 'package:sahelp/constants/ColorConstants.dart';

class DrawerItem extends StatelessWidget {
  final String itemName;
  final String itemIcon;
  final Function onTap;

  DrawerItem({this.itemName, this.itemIcon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        
        children: <Widget>[
          Image.asset(
            itemIcon,
            height: 25.0,
            width: 25.0,
            color: AppColors.APP_MENU_ICON,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(35.0, 0, 0, 0),
            child: Text(
              itemName,
              style: TextStyle(color: AppColors.APP_MENU_TEXT),
            ),
          )
        ],
      ),
      onTap: () {},
    );
  }
}
