import "package:flutter/material.dart";
import 'package:sahelp/constants/ColorConstants.dart';

class InputText extends StatelessWidget {
  final String hintText;
  final String errMsg;
  final String svgIcon;
  final int maxLength;
  final bool isErr;
  final bool isobscureText;
  final TextEditingController myController;

  InputText(
      {this.hintText,
      this.svgIcon,
      this.isErr,
      this.errMsg,
      this.isobscureText,
      this.myController,
      this.maxLength});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: 13,
      obscureText: isobscureText,
      cursorColor: Colors.black,
      keyboardType: TextInputType.number,
      controller: myController,
      decoration: InputDecoration(
          counterText: "",
          isDense: true,
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.APP_MENU_ICON)),
          focusedBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.APP_MENU_ICON)),
          contentPadding:
              EdgeInsets.only(left: 0, bottom: 0, top: 30, right: 15),
          icon: Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 5, 0),
            child: Image.asset(
              svgIcon,
              height: 20.0,
              width: 20.0,
              color: AppColors.APP_MENU_ICON,
            ),
          ),
          hintText: hintText,
          errorText: isErr ? errMsg : null,
          errorStyle: TextStyle(fontSize: 11),
          hintStyle: TextStyle(color: AppColors.APP_MENU_ICON, fontSize: 14)),
    );
  }
}
