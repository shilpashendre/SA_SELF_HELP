import "package:flutter/material.dart";
import "package:sahelp/customwidget/ColorConstants.dart";
import "package:flutter_svg/flutter_svg.dart";

class InputText extends StatelessWidget {
  final String hintText;
  final String svgIcon;

  InputText({this.hintText, this.svgIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          isDense: true,
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.APP_MENU_ICON)),
          contentPadding:
              EdgeInsets.only(left: 0, bottom: 0, top: 30, right: 15),
          icon: Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 5, 0),
            child: SvgPicture.asset(
              svgIcon,
              height: 18.0,
              width: 18.0,
              color: AppColors.APP_MENU_ICON,
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
              color: AppColors.APP_MENU_SUBHEADER_TEXT, fontSize: 14)),
    );
  }
}
