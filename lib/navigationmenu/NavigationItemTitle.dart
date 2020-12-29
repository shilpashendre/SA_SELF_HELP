import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/navigationmenu/navigation_modal.dart';

class NavigationItemTitle extends StatefulWidget {
  final Function onTap;
  final int counter;
  final bool isSelected;

  NavigationItemTitle({this.onTap, this.counter, this.isSelected});

  @override
  _NavigationItemTitleState createState() => _NavigationItemTitleState();
}

class _NavigationItemTitleState extends State<NavigationItemTitle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              navigationItems[widget.counter].isSubtitle
                  ? Container(
                      width: MediaQuery.of(context).size.width,
                      color: AppColors.APP_HEADER_BG_GREY,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(navigationItems[widget.counter].itemName,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: AppColors.APP_MENU_SUBHEADER_TEXT)),
                      ),
                    )
                  : ListTile(
                      tileColor: navigationItems[widget.counter].itemName ==
                              "SA Taxi Details"
                          ? AppColors.APP_HEADER_BG_GREY
                          : null,
                      title: Row(
                        children: <Widget>[
                          Image.asset(
                            navigationItems[widget.counter].itemIcon,
                            height: 25.0,
                            width: 25.0,
                            color: widget.isSelected
                                ? AppColors.APP_HEADER_BLUE
                                : AppColors.APP_MENU_ICON,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(35.0, 0, 0, 0),
                            child: Text(
                              navigationItems[widget.counter].itemName,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: widget.isSelected
                                    ? AppColors.APP_HEADER_BLUE
                                    : AppColors.APP_MENU_TEXT,
                              ),
                            ),
                          )
                        ],
                      ),
                      onTap: widget.onTap,
                    ),
            ])
      ],
    );
  }
}
