import 'package:flutter/material.dart';
import 'package:sahelp/constants/device_helper.dart';

class CustomLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Opacity(
        opacity: 0.5,
        child: Container(
            width: DeviceHelper.fullWidth,
            height: DeviceHelper.fullHeight,
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/icn_loading.gif",
                  height: 70,
                  width: 70,
                )
              ],
            )));
  }
}
