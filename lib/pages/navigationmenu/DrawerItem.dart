import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import 'package:sahelp/customwidget/ColorConstants.dart' as ColorConstants;

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
          SvgPicture.asset(
            itemIcon,
            height: 15.0,
            width: 15.0,
            color: ColorConstants.AppColors.APP_MENU_ICON,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50.0,0,0,0),
            child: Text(
              itemName,
              style: TextStyle(color: ColorConstants.AppColors.APP_MENU_TEXT),
            ), 
          )
        ],
      ),
      onTap: () {},
    );
  }
}
